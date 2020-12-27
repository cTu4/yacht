<?php
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

}
function fn_my_module_get_product_data_post(&$product_data, $auth, $preview, $lang_code){
    $dates = db_get_array("select time_start,time_end from ?:product_reservations where product_id=?s",$product_data['product_id']);
    $product_data['available_dates']=$dates;

}
function html_print($text){
    echo "<pre>";
    print_r($text);
    echo "</pre>";
};
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
            "description" => "Количество кают для двоих",
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
            "description" => "Количество кают для одного",
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
            "description" => "Количество спальных мест для одного",
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
            "description" => "Количество спальных мест для двоих",
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
            "description" => "Расположение",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "checkbox",
            "feature_type" => "S",
            "position" =>1
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
        ]
    ];
    foreach ($features as $keyFeature => $feature){
        $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description=?s",$feature['description']);
        if(!$id_feature){
            fn_update_product_feature($feature,0);
        }
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



