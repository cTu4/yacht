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
function fn_update_reservation($reservations,$product_id){
    if (!empty($reservations) && is_array($reservations)){
        foreach ($reservations as $id_reservatoion => &$data_reservation){
            $id_reservation_old = db_get_field("SELECT reservation_id FROM ?:product_reservations where reservation_id=?s",$id_reservatoion);
            $data_reservation['time_start'] = strtotime($data_reservation['time_start']);
            $data_reservation['time_end'] = strtotime($data_reservation['time_end']);
            if($id_reservation_old){
                db_query("UPDATE ?:product_reservations SET ?u WHERE reservation_id = ?i", $data_reservation, $id_reservation_old);

            }
            else{
                $data_reservation['product_id'] = $product_id;
                db_query("INSERT INTO ?:product_reservations ?e", $data_reservation);

            }
        }

    }
}



