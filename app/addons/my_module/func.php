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
            if(isset($posts[$i]) && $i+2<8){
                array_push($posts_data['left_column'],$posts[$i]);
            }
            if(isset($posts[$i+1]) && $i+1<8){
                array_push($posts_data['center_column'],$posts[$i+1]);

            }
            if(isset($posts[$i+2])){
                array_push($posts_data['right_column'],$posts[$i+2]);
            }
        }
        $discussion['posts_columns'] = $posts_data;
    }

}