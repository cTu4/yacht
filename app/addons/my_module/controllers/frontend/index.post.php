<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    return;
}
if ($mode == 'index'){
    $params = [
        "feature_variants" => [
            "26" => ["26" => 59]
        ]
    ];
    list($lux_yachts, $search) = fn_get_products($params, Registry::get('settings.Appearance.products_per_page'));
    fn_filters_handle_search_result($params, $lux_yachts, $search);

    fn_gather_additional_products_data($lux_yachts, array(
        'get_icon' => true,
        'get_detailed' => true,
        'get_additional' => true,
        'get_options'=> true,
        'get_discussions' => true
    ));
    Tygh::$app['view']->assign("lux_yachts",$lux_yachts);
}
