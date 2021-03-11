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

function fn_location_descriptions_get_companies_post($params, $auth, $items_per_page, $lang_code, &$companies){
    $companies[] = [
            "id" => 0,
            'company_id' => 0,
            'value' => 0,
            'text' => 'Все продавцы (общий товар)',
            'name' => 'Все продавцы (общий товар)',
            'append' => ''
    ];
}

function fn_location_descriptions_update_product_features_value_pre($product_id, $product_features, $add_new_variant, $lang_code, $params, $category_ids){
    $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description='Расположение'");
    if(!empty($id_feature) && isset($product_features[$id_feature]) && !empty($product_features[$id_feature])){
//        $id_variant = db_get_field("select feature_id from ?:product_features_values where description='Расположение'");

//        html_print($product_features[$id_feature]);
//        die;
    }

}