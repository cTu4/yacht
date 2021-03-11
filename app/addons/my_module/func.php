<?php
use Tygh\Enum\NotificationSeverity;
use Tygh\Registry;
use Tygh\Navigation\LastView;
use Tygh\Languages\Languages;
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;

    function fn_my_module_get_discussion_post($object_id, $object_type, $get_posts, $params, &$discussion) {
    if(isset($discussion['posts'])){
        $posts = $discussion['posts'];
        $posts_data=[
            "left_column"=>[],
            "center_column"=>[],
            "right_column"=>[]
        ];
        for($i=0;$i<9;$i=$i+3){
            if(isset($posts[$i])){
                array_push($posts_data['left_column'],$posts[$i]);
            }
            if(isset($posts[$i+1])){
                array_push($posts_data['center_column'],$posts[$i+1]);

            }
            if(isset($posts[$i+2])){
                array_push($posts_data['right_column'],$posts[$i+2]);
            }
        }
        $discussion['posts_columns'] = $posts_data;
    }
    if(isset($discussion['thread_id']) && isset($discussion['posts'][0])){
        $discussion['average_ratings'] = fn_get_avarage_ratings($discussion['thread_id'], $discussion['posts'][0]['ratings']);
    }

}

    function fn_get_avarage_ratings($thread_id,$fields){
    $result = [];
    $sql = "select ";
    if($fields){
        foreach ($fields as $key_filed => $field){
            $sql .= 'AVG('.$key_filed.') as '.$key_filed.' ,';
        }
        $sql = substr($sql,0,-1);
        $sql .= "from ?:discussion_rating where thread_id=?i";
        $data_ratings = db_get_array($sql,$thread_id);
        foreach ($data_ratings[0] as $key => &$rating){
            $result[$key] = [
                'info' =>   number_format($rating, 2),
                'value' =>  ($rating / 5) * 100
                ];

        }

    }
    return $result?$result:false;
}

    function fn_my_module_get_product_data_post(&$product_data, $auth, $preview, $lang_code){
        $dates = db_get_array("select time_start,time_end from ?:product_reservations where product_id=?s",$product_data['product_id']);
        $product_data['available_dates']=$dates;
        $vendors_desc = db_get_array("select vendor_desc_id,description from ?:product_vendors_desc where product_id=?i and company_id=?i",
            $product_data['product_id'],
            $product_data['company_id']
        );
        $product_data['vendors_desc'] = $vendors_desc?$vendors_desc[0]:null;
        $card_data = fn_get_card_data($product_data['product_features']);
        $product_data['card_data'] = $card_data;

        $product_data['discussion'] = fn_get_discussion($product_data['product_id'], "P", true, $_REQUEST);

        $product_data['discussion_type'] = empty($product_data['discussion']) ? DiscussionTypes::TYPE_DISABLED : $product_data['discussion']['type'];

    }
    function html_print($text){
        echo "<pre>";
        print_r($text);
        echo "</pre>";
    };
    function fn_get_features_ids($selects_features = null){
        $features_ids = [];

        $id_feature_location = db_get_field('select feature_id from ?:product_features_descriptions where description="Расположение"');
        $features_ids["location"]=$id_feature_location;
        $id_feature_amenities = db_get_field('select feature_id from ?:product_features_descriptions where description="Удобства"');
        $features_ids["amenities"]=$id_feature_amenities;
        $id_feature_amenities = db_get_field('select feature_id from ?:product_features_descriptions where description="Производитель"');
        $features_ids["vendor"]=$id_feature_amenities;
        $id_feature_amenities = db_get_field('select feature_id from ?:product_features_descriptions where description="Модель"');
        $features_ids["model"]=$id_feature_amenities;
        $ids=[];
        if($selects_features){
            $sql = "select feature_id from ?:product_features_descriptions where (";
            foreach ($selects_features as $feature){
                $sql .= " description='".$feature."' or";
            }
            $sql = substr($sql, 0, -3);
            $sql .= ") and lang_code='ru'";
            $ids = db_get_fields($sql);
        }

        array_push($ids,$id_feature_location,$id_feature_amenities);

//        $option_variant_ids = select_ids('variant_id','product_feature_variant_descriptions',boat_options_name,'variant');

        return ["ids"=>$ids,
            "features"=>$features_ids];
    }
    function fn_get_card_data($card_features){
        $card_data = [];
        foreach ($card_features as $card_feature){
            switch ($card_feature['description']){
                case features_names[0]:
                    $card_data['cabins']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                    break;
                case features_names[1]:
                    $card_data['sleep_place']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                    break;
                case features_names[2]:
                    $card_data['bath']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                    break;
                case "Удобства":
                    foreach ($card_feature['variants'] as $variant){
                        switch ($variant['variant']){
                            case boat_options_name[0]:
                                $card_data['shower'] = !empty($variant['selected']);
                                break;
                            case boat_options_name[1]:
                                $card_data['kitchen'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["wi_fi"]:
                                $card_data['wi_fi'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["bath_accessories"]:
                                $card_data['bath_accessories'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["dishes"]:
                                $card_data['dishes'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["cinema"]:
                                $card_data['cinema'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["pool"]:
                                $card_data['pool'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["bar"]:
                                $card_data['bar'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["pets"]:
                                $card_data['pets'] = !empty($variant['selected']);
                                break;
                            case boat_addons_name["washer"]:
                                $card_data['washer'] = !empty($variant['selected']);
                                break;
                        }


                    }
                    break;
            }
        }
        return $card_data;
    }
    function fn_my_module_install(){
        $features = [
            [
                "description" => "Удобства",
                "company_id" => 1,
                "purpose" => "find_products",
                "feature_style" => "multiple_checkbox",
                "filter_style" => "checkbox",
                "feature_type" => "M",
                "position" =>1,
                "variants"=>[
                    [
                        "variant"=> "Наличие душа"
                    ],
                    [
                        "variant" => "Наличие кухни"
                    ],
                    [
                        "variant" => "Wi-Fi"
                    ],
                    [
                        "variant" => "Банные акксессуары"
                    ],
                    [
                        "variant" => "Питание"
                    ],
                    [
                        "variant" => "Кинотеатр"
                    ],
                    [
                        "variant" => "Бассейн"
                    ],
                    [
                        "variant" => "Мини-бар"

                    ],
                    [
                        "variant" => "Можно с животными"
                    ],
                    [
                        "variant" => "Стиральная машина"
                    ]
                ]
            ],
            [
                "description" => "Количество кают",
                "company_id" => 1,
                "purpose" => "find_products",
                "feature_style" => "text",
                "filter_style" => "slider",
                "feature_type" => "N",
                "variants"=>[
                    [
                        "variant"=> 1
                    ]
                ]
            ],
            [
                "description" => "Количество спальных мест",
                "company_id" => 1,
                "purpose" => "find_products",
                "feature_style" => "text",
                "filter_style" => "slider",
                "feature_type" => "N",
                "variants"=>[
                    [
                        "variant"=> 1
                    ]
                ]
            ],
            [
                "description" => "Количество ванных комнат",
                "company_id" => 1,
                "purpose" => "find_products",
                "feature_style" => "text",
                "filter_style" => "slider",
                "feature_type" => "N",
                "variants"=>[
                    [
                        "variant"=> 1
                    ]
                ]
            ],
            [
                "description" => "Год выпуска",
                "company_id" => 1,
                "purpose" => "find_products",
                "feature_style" => "text",
                "filter_style" => "slider",
                "feature_type" => "N",
                "variants"=>[
                    [
                        "variant"=> 2020
                    ]
                ]
            ],
            [
                "description" => "Тип яхты",
                "company_id" => 1,
                "purpose" => "find_products",
                "feature_style" => "checkbox",
                "filter_style" => "checkbox",
                "feature_type" => "S",
                "position" => 11,
                "variants" => [
                    [
                        "position" => 1,
                        "variant" => "Проверено"
                    ],
                    [
                        "position" => 2,
                        "variant" => "Плюс"
                    ],
                    [
                        "position" => 3,
                        "variant" => "Люкс"
                    ]
                ]
            ],
            [
                "description" => "Производитель",
                "company_id" => 0,
                "purpose" => "organize_catalog",
                "feature_style" => "brand",
                "filter_style" => "checkbox",
                "feature_type" => "E"
            ],
            [
                "description" => "Модель",
                "company_id" => 0,
                "purpose" => "find_products",
                "feature_style" => "text",
                "filter_style" => "checkbox",
                "feature_type" => "S"
            ]
        ];
        foreach ($features as $keyFeature => $feature){
            $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description=?s",$feature['description']);
            if(!$id_feature){
                fn_update_product_feature($feature,0);
            }
        }

        $name = "services";
        $rule_params = "products.services";
        if (Registry::get('addons.seo.single_url') == 'Y') {
            $lang_codes = [Registry::get('settings.Appearance.frontend_default_language')];
        } else {
            $lang_codes = array_keys(Languages::getAll());
        }
        foreach ($lang_codes as $lang_code) {
            $created_seo_name = fn_create_seo_name(0, 's', $name, 0, $rule_params, '', $lang_code);
            if ($_REQUEST['rule_data']['name'] !== $created_seo_name) {
                $errors = $created_seo_name;
            }
        }
    }
    function fn_update_vendors_desc($vendors_desc_id,$product_id,$company_id,$value){
        $data = [
            "product_id"=>          $product_id,
            "company_id"=>          $company_id,
            "description"=>         $value
        ];
        if($vendors_desc_id){
            // update
            $query = db_query("UPDATE ?:product_vendors_desc SET ?u WHERE vendor_desc_id= ?i", $data,$vendors_desc_id);

        }else{
            // add

            $query = db_query("INSERT INTO ?:product_vendors_desc ?e", $data);
        }
    }
    function fn_update_reservation($reservations,$reservations_add,$product_id){

        if (!empty($reservations) && is_array($reservations)){
            foreach ($reservations as $data_reservation){
                $data = explode(' — ',$data_reservation['time_start']);
    //            $month = mb_strimwidth($data[0],0,3);
    //            $time_start = str_replace($month,Months[$month],$data[0]);
    //            $month = mb_strimwidth($data[1],0,3);
    //            $time_end = str_replace($month,Months[$month],$data[1]);
                $data_reservation['time_start'] = strtotime($data[0]);
                $data_reservation['time_end'] = strtotime($data[1]);
                if($data_reservation['time_start'] && $data_reservation['time_end'] && $data_reservation['id_reservation']){
                    db_query("UPDATE ?:product_reservations SET ?u WHERE reservation_id = ?i", $data_reservation, $data_reservation['id_reservation']);
                }
            }

        }
        if (!empty($reservations_add) && is_array($reservations_add)){
            foreach ($reservations_add as &$data_reservation){
                if(!empty($data_reservation['time_start'])){
                $data = explode(' — ',$data_reservation['time_start']);
                    $data_reservation['time_start'] = strtotime($data[0]);
                    $data_reservation['time_end'] = strtotime($data[1]);
                    $data_reservation['product_id']=$product_id;
                    db_query("INSERT INTO ?:product_reservations ?e", $data_reservation);
                }


            }

            }

        }
    function fn_my_module_get_discussion_posts_post($params, $items_per_page, &$posts){
        foreach ($posts as &$post) {
            $ratings = db_get_array("select * from ?:discussion_rating where post_id=?i",$post['post_id']);
            if($ratings){
                $arr = [];
                foreach ($ratings[0] as $keyRating => $rating){
                    if($keyRating !== "rating_value" && $keyRating !== "post_id" && $keyRating !== "thread_id" ){
                        $arr[$keyRating] = $rating;
                    }
                }
                $post['ratings'] = $arr;

            }

        }
    }

    function fn_my_module_get_products($params, $fields, $sortings, $condition, $join, $sorting, $group_by, $lang_code, $having){

    }

    function get_categores_search(){
        $categories_search = db_get_hash_array("select category_id, category from ?:category_descriptions where category IN (?a) and lang_code='en'", "category", categories_search);
        return $categories_search;
    }
    function get_release_filter(){
        $feature_realise = db_get_field("select feature_id from ?:product_features_descriptions where description='Год выпуска'");
        return $feature_realise;
    }
    function get_berths_filter(){
        $feature_berths = db_get_field("select feature_id from ?:product_features_descriptions where description='Количество спальных мест'");
        return $feature_berths;
    }
    function get_id_feature($name){
        $feature_id = db_get_field("select feature_id from ?:product_features_descriptions where description=?s",$name);

        return $feature_id;
    }
