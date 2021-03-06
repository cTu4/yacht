<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    return;
}
if ($mode == 'index'){
    $id_feature_type = db_get_field("select feature_id from ?:product_features_descriptions where description='Тип яхты'");
    $id_variant_lux = db_get_field("select variant_id from ?:product_feature_variant_descriptions where variant='Люкс'");
    $params = [
        "feature_variants" => [
            $id_feature_type => [$id_feature_type => $id_variant_lux]
        ]
    ];
    list($lux_yachts, $search_lux) = fn_get_products($params, Registry::get('settings.Appearance.products_per_page'));

//    fn_filters_handle_search_result($params, $lux_yachts, $search_lux);
    $id_variant_checked = db_get_field("select variant_id from ?:product_feature_variant_descriptions where variant='Проверено'");

    $params = [
        "feature_variants" => [
            $id_feature_type => [$id_feature_type => $id_variant_checked]
        ]
    ];
    list($checked_yachts, $search_checked) = fn_get_products($params, Registry::get('settings.Appearance.products_per_page'));

//    fn_filters_handle_search_result($params, $lux_yachts, $search_checked);

//    fn_gather_additional_products_data($lux_yachts, array(
//        'get_icon' => true,
//        'get_detailed' => true,
//        'get_features'=> true
//    ));
    $feature_ids = fn_get_features_ids(features_names);
    $result = [];
    foreach ($lux_yachts as $yacht){
        $result[] = fn_get_product_data($yacht['product_id'],$auth);
    }
    Tygh::$app['view']->assign("lux_yachts",$result);
    Tygh::$app['view']->assign("search_lux",$search_lux);

    $result = [];
    foreach ($checked_yachts as $yacht){
        $result[] = fn_get_product_data($yacht['product_id'],$auth);
    }
//    $categories_search = db_get_hash_array("select category_id, category from ?:category_descriptions where category IN (?a) and lang_code='en'", "category", categories_search);
//    Tygh::$app['view']->assign("categories_search",$categories_search);



    Tygh::$app['view']->assign("checked_yachts",$result);
    Tygh::$app['view']->assign("search_checked",$search_checked);

    Tygh::$app['view']->assign("features",$feature_ids['features']);
    Tygh::$app['view']->assign("id_feature_type",$id_feature_type);
    Tygh::$app['view']->assign("variants_type",["lux"=> $id_variant_lux, "checked"=>$id_variant_checked]);




}

