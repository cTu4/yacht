<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($mode == 'update') {
        if (!empty($_REQUEST['reservations'])) {
            fn_update_reservation($_REQUEST['reservations'],$_REQUEST['product_id']);
        }
    }

    return;
}

if ($mode == 'update') {
Registry::set('navigation.tabs.reservation', [
'title' => __('reservation'),
'js'    => true,
]);
$reservations = db_get_array("select * from ?:product_reservations where product_id=?i",$_REQUEST['product_id']);
if($reservations){
    Tygh::$app['view']->assign('reservations', $reservations);
}
}