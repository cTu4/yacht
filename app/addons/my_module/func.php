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
    $feature_data = [
        "description" => "Расположение",
        "company_id" => 1,
        "purpose" => "find_products",
        "feature_style" => "text",
        "filter_style" => "checkbox",
        "feature_type" => "S",
        "parent_id" => 0,
        "feature_code" => '',
        "position" =>'' ,
        "full_description" => '',
        "status" => "A",
        "display_on_product" => "Y",
        "display_on_catalog" => "N",
        "display_on_header" => "N",
        "prefix" => '',
        "suffix" => '',
        "yml2_variants_unit" => '',
        "yml2_exclude_prices" => '',
        "categories_path" => '',
        "original_var_ids" => ''
    ];
    fn_update_product_feature($feature_data,0);
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



