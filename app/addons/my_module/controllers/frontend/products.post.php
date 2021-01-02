<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    return;
}

if ($mode == 'view') {

    $features_ids = [];
    $id_feature_location = db_get_field('select feature_id from ?:product_features_descriptions where description="Расположение"');
    $features_ids["location"]=$id_feature_location;
    $id_feature_amenities = db_get_field('select feature_id from ?:product_features_descriptions where description="Удобства"');
    $features_ids["amenities"]=$id_feature_amenities;
    $sql = "select feature_id,description from ?:product_features_descriptions where (";
    foreach (features_names as $feature){
        $sql .= " description='".$feature."' or";
    }
    $sql = substr($sql, 0, -3);
    $sql .= ") and lang_code='ru'";
    $features_ids["features_cards"] = db_get_hash_array($sql,"description");
    Tygh::$app['view']->assign('features_ids', $features_ids);




}