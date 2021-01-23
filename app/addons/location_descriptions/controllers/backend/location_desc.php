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

use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }

if ($_SERVER['REQUEST_METHOD']	== 'POST') {
    if ($mode == 'm_delete'){
        if(!empty($_REQUEST['clear_desc']) && !empty($_REQUEST['descr_sl'])){
            foreach ($_REQUEST['clear_desc'] as $desc){
                db_query("UPDATE ?:product_feature_variant_descriptions set description='' where variant_id=?i and lang_code=?s",$desc,$_REQUEST['descr_sl']);
            }
        }

    }
    if ($mode == 'delete'){
        if(!empty($_REQUEST['variant_id']) && !empty($_REQUEST['lang_code'])){
            db_query("UPDATE ?:product_feature_variant_descriptions set description='' where variant_id=?i and lang_code=?s",$_REQUEST['variant_id'],$_REQUEST['lang_code']);
        }
    }
    if ($mode == 'update') {

        $lang_code = $_REQUEST['descr_sl'];
        $location_desc = $_REQUEST['location_desc'];
        if($location_desc){
            foreach ($location_desc as $desc) {
                if(!empty($desc['variant_id'])){
//                    $variant_id = $desc['variant_id'];
//                    unset($desc['variant_id']);
                    db_query('UPDATE ?:product_feature_variant_descriptions SET ?u WHERE variant_id=?i and lang_code=?s', $desc, $desc['variant_id'], $lang_code);
                }
                else{
                    $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description='Расположение'");
                    $variant = [
                        "variant" => $desc['variant'],
                        "description" => $desc['description']
                    ];
                    fn_update_product_feature_variant($id_feature, "S", $variant, $lang_code);

                }
            }
        }
    }
    $disatch = !empty($_REQUEST['descr_sl'])?$_REQUEST['descr_sl']:"ru";
    return array(CONTROLLER_STATUS_OK, "location_desc.manage?descr_sl=" . $disatch );
}

if($mode == "manage"){
        $lang_code = $_REQUEST['descr_sl'];
        $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description='Расположение'");
        $variants_location = db_get_array("select ?:product_feature_variants.variant_id,description,variant from ?:product_feature_variants 
        inner join ?:product_feature_variant_descriptions 
        on ?:product_feature_variants.variant_id=?:product_feature_variant_descriptions.variant_id 
        where ?:product_feature_variants.feature_id=?i and ?:product_feature_variant_descriptions.lang_code=?s", $id_feature,$lang_code);
        Tygh::$app['view']->assign('location_desc', $variants_location);
        Tygh::$app['view']->assign('descr_sl', $lang_code);
}
