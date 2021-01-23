<?php
use Tygh\Registry;

function fn_my_module_location_install(){
    $feature = [
        "description" => "Расположение",
        "purpose" => "find_products",
        "feature_style" => "text",
        "filter_style" => "checkbox",
        "feature_type" => "S",
        "position" =>1
    ];
    $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description=?s",$feature['description']);
    if(!$id_feature){
        $id_feature = fn_update_product_feature($feature,0);
        db_query("update ?:product_features_descriptions set description='Location' where lang_code='en' and feature_id=?i",$id_feature );
    }
}
function fn_location_descriptions_get_product_feature_variants(&$fields, $join, $condition, $group_by, $sorting, $lang_code, $limit, $params){
    array_push($fields,'?:product_feature_variant_descriptions.description');
}
