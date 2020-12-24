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
    Tygh::$app['view']->assign('features_ids', $features_ids);

}