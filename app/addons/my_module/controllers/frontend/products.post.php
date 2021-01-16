<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    return;
}
function select_ids($select,$table,$filters, $filter_on){
    $sql = "select ".$select." from ?:".$table." where (";
    foreach ($filters as $filter){
        $sql .= " ".$filter_on."='".$filter."' or";
    }
    $sql = substr($sql, 0, -3);
    $sql .= ") and lang_code='ru'";
    $ids = db_get_fields($sql);
    return $ids;
}
if ($mode == 'services'){
    if(isset($_REQUEST['product_id'])){
        $product = fn_get_product_data(
            $_REQUEST['product_id'],
            $auth,
            CART_LANGUAGE,
            '',
            true,
            true,
            true,
            true,
            fn_is_preview_action($auth, $_REQUEST),
            true,
            false,
            true
        );
        Tygh::$app['view']->assign('product', $product);

        $features_ids = fn_get_features_ids();
        Tygh::$app['view']->assign('features_ids', $features_ids);
    }


}
if ($mode == 'view') {

    $features_ids = fn_get_features_ids();
    $sql = "select feature_id from ?:product_features_descriptions where (";
    foreach (features_names as $feature){
        $sql .= " description='".$feature."' or";
    }
    $sql = substr($sql, 0, -3);
    $sql .= ") and lang_code='ru'";
    $ids = db_get_fields($sql);
    array_push($ids,$features_ids['location'],$features_ids['amenities']);

    $option_variant_ids = select_ids('variant_id','product_feature_variant_descriptions',boat_options_name,'variant');

    $card_features = fn_get_product_features([
        "product_id"=>$_REQUEST['product_id'],
        "feature_id"=> $ids,
        "variants"=>true
    ]);
    $card_data = fn_get_card_data($card_features[0]);
    Tygh::$app['view']->assign('card_data', $card_data);
    Tygh::$app['view']->assign('features_ids', $features_ids);
    $logos = fn_get_logos($_REQUEST['company_id']);
    $company_data = fn_get_company_data($_REQUEST['company_id'], DESCR_SL);
    $company_data['logo'] = $logos['theme'];
    Tygh::$app['view']->assign('company_data', $company_data);








}