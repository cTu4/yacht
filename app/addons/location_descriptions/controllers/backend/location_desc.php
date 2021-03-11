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
use Tygh\Enum\ObjectStatuses;
use Tygh\Enum\SiteArea;

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
function fn_file_get_contents_curl_box() {
    $url = "https://gridforecast.com/api/v1/statistics/temperature/55.75;37.61?api_token=hwSVgBfbFYryg4hc";
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
//    curl_setopt($ch, CURLOPT_POST, 1);
//    curl_setopt($ch, CURLOPT_POSTFIELDS,
//        http_build_query($params));
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $data = curl_exec($ch);
    curl_close($ch);
    $data = json_decode($data, true);
    return $data;
}

if($mode == "test"){
    $cities = db_get_array("select city_id from ?:_cities where region_id=4185354");
    db_query('INSERT INTO ?:_description ?m', $cities);
    die;
}
if($mode == "manage"){
        $lang_code = $_REQUEST['descr_sl'];
        $title = "title_".$lang_code;
        html_print("select 
        ?:_description.city_id, 
        ?:_countries.".$title.", 
        ?:_regions.".$title.",
        ?:_description.description_".$lang_code." 
        from  ?:_description inner join 
        ?:_cities on ?:_cities.city_id=?:_description.city_id 
        inner join ?:_regions on 
        ?:_cities.region_id = ?:_regions.region_id
        inner join ?:_countries on 
        ?:_cities.country_id = ?:_countries.country_id");
        die;
        $location_data = db_get_array("select 
        ?:_description.city_id, 
        ?:_countries.".$title.", 
        ?:_regions.".$title.",
        ?:_description.description_".$lang_code." 
        from  ?:_description inner join 
        ?:_cities on ?:_cities.city_id=?:_description.city_id 
        inner join ?:_regions on 
        ?:_cities.region_id = ?:_regions.region_id
        inner join ?:_countries on 
        ?:_cities.country_id = ?:_countries.country_id");
        html_print($location_data);
        die;
//        $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description='Расположение'");
//        $variants_location = db_get_array("select ?:product_feature_variants.variant_id,description,variant from ?:product_feature_variants
//        inner join ?:product_feature_variant_descriptions
//        on ?:product_feature_variants.variant_id=?:product_feature_variant_descriptions.variant_id
//        where ?:product_feature_variants.feature_id=?i and ?:product_feature_variant_descriptions.lang_code=?s", $id_feature,$lang_code);
//        Tygh::$app['view']->assign('location_desc', $variants_location);

        Tygh::$app['view']->assign('descr_sl', $lang_code);
        list($variants_location, $search) = fn_get_location_desc($_REQUEST, Registry::get('settings.Appearance.admin_elements_per_page'));

        Tygh::$app['view']->assign('location_desc', $variants_location);
        Tygh::$app['view']->assign('search', $search);

}
function fn_get_location_desc($params = array(), $items_per_page = 0, $lang_code = DESCR_SL){
    $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description='Расположение'");

    // Init filter
    $params = LastView::instance()->update('location_desc', $params);

    // Set default values to input params
    $default_params = array (
        'page' => 1,
        'items_per_page' => $items_per_page
    );

    $params = array_merge($default_params, $params);
    $condition = "";
    if (isset($params['variant']) && fn_string_not_empty($params['variant'])) {
        $condition .= db_quote(" AND variant LIKE ?l", "%".trim($params['variant'])."%");
    }

    $limit = '';
    if (!empty($params['items_per_page'])) {
        $params['total_items'] = db_get_field("SELECT COUNT(*) FROM ?:product_feature_variants 
            inner join ?:product_feature_variant_descriptions 
            on  ?:product_feature_variants.variant_id=?:product_feature_variant_descriptions.variant_id
            WHERE feature_id = ?i and lang_code=?s ?p", $id_feature,$lang_code, $condition);
        $limit = db_paginate($params['page'], $params['items_per_page'], $params['total_items']);
    }
    $variants_location = db_get_array("select ?:product_feature_variants.variant_id,description,variant from ?:product_feature_variants 
        inner join ?:product_feature_variant_descriptions 
        on ?:product_feature_variants.variant_id=?:product_feature_variant_descriptions.variant_id 
        where ?:product_feature_variants.feature_id=?i and ?:product_feature_variant_descriptions.lang_code=?s ?p ORDER BY variant_id $limit", $id_feature,$lang_code, $condition);

    return array($variants_location, $params);
}

// Ajax
if ($mode == 'get_store_locators_list') {

    // Check if we trying to get list by non-ajax
//    if (!defined('AJAX_REQUEST')) {
//        return array(CONTROLLER_STATUS_REDIRECT, fn_url());
//    }

    //TODO make single function

    $params = array_merge(array(
        'render_html' => 'Y'
    ), $_REQUEST);

    $condition = '';
    if (!empty($params['q'])) {
        $pattern = $params['q'];
    } elseif (!empty($params['pattern'])) {
        $pattern = $params['pattern'];
    } else {
        $pattern = '';
    }
    if (isset($_REQUEST['page'], $_REQUEST['page_size'])) {
        $limit = (int) $_REQUEST['page_size'];
        $start = ($_REQUEST['page'] - 1) * $limit;
    } else {
        $start = !empty($params['start']) ? $params['start'] : 0;
        $limit = (!empty($params['limit']) ? $params['limit'] : 10) + 1;
    }

    $condition = '1=1';


    fn_set_hook('get_companies_list', $condition, $pattern, $start, $limit, $params);

    if ($pattern) {
        $condition .= db_quote(' AND name LIKE ?l', $pattern . '%');
    }

    if (!empty($params['ids'])) {
        $condition .= db_quote(' AND store_location_id IN (?n)', $params['ids']);
    }

    $objects = db_get_hash_array("SELECT store_location_id, store_location_id as value, store_location_id as id, name AS name, name AS text FROM ?:store_location_descriptions WHERE $condition ORDER BY name LIMIT ?i, ?i", 'value', $start, $limit);
    $total = (int) db_get_field('SELECT COUNT(*) FROM ?:store_location_descriptions WHERE ?p', $condition);

    if (fn_allowed_for('ULTIMATE')) {
        foreach ($objects as &$object) {
            $object['storefront_status'] = fn_ult_get_storefront_status($object['company_id']);
        }
        unset($object);
    }

    if (defined('AJAX_REQUEST') && sizeof($objects) < $limit) {
        Tygh::$app['ajax']->assign('completed', true);
    } else {
        array_pop($objects);
    }

    if (empty($params['start']) && empty($params['pattern'])) {
        $all_vendors = array();

        if (!empty($params['show_all']) && $params['show_all'] == 'Y') {
            $all_vendors[0] = array(
                'id'              => (!empty($params['search']) && $params['search'] == 'Y') ? '' : 0,
                'company_id'      => (!empty($params['search']) && $params['search'] == 'Y') ? '' : 0,
                'value'           => (!empty($params['search']) && $params['search'] == 'Y') ? '' : 0,
                'text'            => empty($params['default_label']) ? __('all_vendors') : __($params['default_label']),
                'name'            => empty($params['default_label']) ? __('all_vendors') : __($params['default_label']),
                'append'          => '',
                'data'            => [
                    'id'              => (!empty($params['search']) && $params['search'] == 'Y') ? '' : 0,
                    'company_id'      => (!empty($params['search']) && $params['search'] == 'Y') ? '' : 0,
                    'value'           => (!empty($params['search']) && $params['search'] == 'Y') ? '' : 0,
                    'text'            => empty($params['default_label']) ? __('all_vendors') : __($params['default_label']),
                    'name'            => empty($params['default_label']) ? __('all_vendors') : __($params['default_label']),
                    'append'          => '',
                    'url'             => fn_url('products.update?product_id=0')
                ]
            );
            $total++;
        }

        $objects = $all_vendors + $objects;
    }

    $objects = array_values(array_map(function ($company) {

        return [
            'id'              => $company['id'],
            'company_id'      => $company['company_id'],
            'value'           => $company['value'],
            'text'            => $company['text'],
            'name'            => $company['name'],
            'append'           => $company['append'],
            'data'            => [
                'id'              => $company['id'],
                'company_id'      => $company['company_id'],
                'value'           => $company['value'],
                'text'            => $company['text'],
                'name'            => $company['name'],
                'append'          => $company['append'],
                'url'             => fn_url('products.update?product_id=' . $company['id'])
            ]
        ];
    }, $objects));

    Tygh::$app['ajax']->assign('objects', $objects);
    Tygh::$app['ajax']->assign('total_objects', $total);

    if (defined('AJAX_REQUEST') && !empty($params['action'])) {
        Tygh::$app['ajax']->assign('action', $params['action']);
    }

    if (!empty($params['onclick'])) {
        Tygh::$app['view']->assign('onclick', $params['onclick']);
    }

    Tygh::$app['view']->assign(array(
        'objects'     => $objects,
        'id'          => !empty($params['result_ids']) ? $params['result_ids'] : '',
        'object_type' => 'companies',
    ));

    if ($params['render_html'] === 'Y') {
        Tygh::$app['view']->display('common/ajax_select_object.tpl');
    }
    exit;
}