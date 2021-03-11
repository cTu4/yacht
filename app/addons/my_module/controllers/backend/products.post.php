<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if ($mode == 'update') {
        if (isset($_REQUEST['reservations']) || isset($_REQUEST['reservations_add'])) {
            fn_update_reservation(isset($_REQUEST['reservations'])?$_REQUEST['reservations']:null,isset($_REQUEST['reservations_add'])?$_REQUEST['reservations_add']:null,$_REQUEST['product_id']);
        }

        if($_REQUEST['product_data'] &&
            isset($_REQUEST['product_data']['vendor_desc']) &&
            $_REQUEST['product_id'] &&
            isset($_REQUEST['product_data']['company_id'])){

            fn_update_vendors_desc(
                $_REQUEST['product_data']['vendor_desc']['vendor_desc_id'],
                $_REQUEST['product_id'],
                $_REQUEST['product_data']['company_id'],
                $_REQUEST['product_data']['vendor_desc']['description']);
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
    Tygh::$app['view']->assign('lang', isset($_REQUEST['sl'])?$_REQUEST['sl']:'ru');

}