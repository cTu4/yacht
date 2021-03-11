<?php
/***************************************************************************
 *                                                                          *
 *   (c) 2004 Vladimir V. Kalynyak, Alexey V. Vinokurov, Ilya M. Shalnev    *
 *                                                                          *
 * This  is  commercial  software,  only  users  who have purchased a valid *
 * license  and  accept  to the terms of the  License Agreement can install *
 * and use this program.                                                    *
 *                                                                          *
 ****************************************************************************
 * PLEASE READ THE FULL TEXT  OF THE SOFTWARE  LICENSE   AGREEMENT  IN  THE *
 * "copyright.txt" FILE PROVIDED WITH THIS DISTRIBUTION PACKAGE.            *
 ****************************************************************************/

use Tygh\Enum\NotificationSeverity;
use Tygh\Registry;
use Tygh\Navigation\LastView;
use Tygh\Languages\Languages;

if (!defined('BOOTSTRAP')) { die('Access denied'); }

if ($_SERVER['REQUEST_METHOD']	== 'POST') {
    if($mode === "update"){

        $vendors = $_REQUEST['vendor'];
        if(!empty($vendors)){
            foreach ($vendors as $vendor){
                db_query("delete from ?:variant_links where parent_variant_id=?i",$vendor['variant_id']);

                if(!empty($vendor['models'])){
                    foreach ($vendor['models'] as $model) {
                            db_query('INSERT INTO ?:variant_links ?e',
                                [
                                    "parent_variant_id" =>  $vendor['variant_id'],
                                    "variant_id" =>         $model
                                ]);
                    }
                }
            }
        }
    }
    return array(CONTROLLER_STATUS_OK, "vendor_model.manage");
}

if($mode === "manage"){
    $id_feature_vendor = db_get_field('select feature_id from ?:product_features_descriptions where description="Производитель"');
    $id_feature_model = db_get_field('select feature_id from ?:product_features_descriptions where description="Модель"');
    $vendors = fn_get_product_feature_data($id_feature_vendor, true);
    $models = fn_get_product_feature_data($id_feature_model, true);
    $vendors = $vendors['variants'];
    $models = $models['variants'];
    $models_ids = [];
    foreach ($models as $model) {
        $models_ids[] = $model['variant_id'];
    }

    foreach ($vendors as &$vendor) {
        $links_variant = db_get_array("select * from ?:variant_links 
                        where parent_variant_id=?i and variant_id in(?n)", $vendor['variant_id'],$models_ids);
        foreach ($links_variant as $item) {
            $vendor["models"][$item['variant_id']] = $item;
        }
    }

    Tygh::$app['view']->assign('vendors', $vendors);
    Tygh::$app['view']->assign('models', $models);
}