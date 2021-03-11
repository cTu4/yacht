<?php
use Tygh\Common\OperationResult;
use Tygh\Enum\ObjectStatuses;
use Tygh\Enum\ProductFeatures;
use Tygh\Enum\YesNo;
use Tygh\Registry;

if ($mode === 'get_variants_list') {
    // Check if we trying to get list by non-ajax
//    if (!defined('AJAX_REQUEST')) {
//        return array(CONTROLLER_STATUS_REDIRECT, fn_url());
//    }

    //TODO make single function
    $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description='Расположение'");
    if($_REQUEST['feature_id'] === $id_feature){
        $params = $_REQUEST;

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

        $objects = db_get_hash_array("SELECT store_location_id, name as value, store_location_id as id, name AS name, name AS text FROM ?:store_location_descriptions WHERE $condition ORDER BY name LIMIT ?i, ?i", 'value', $start, $limit);
        $total = (int) db_get_field('SELECT COUNT(*) FROM ?:store_location_descriptions WHERE ?p', $condition);




        $objects = array_values(array_map(function ($company) {
            $image_url = null;
            return [
                'id'        => $company['id'],
                'text'      => $company['text'],
                'image_url' => $image_url,
                'data'      => [
                    'image_url' => $image_url,
                    'name'      => $company['name'],
                    'color'     => "#ffffff",
                ]
            ];
        }, $objects));

        Tygh::$app['ajax']->assign('objects', $objects);
        Tygh::$app['ajax']->assign('total_objects', $total);

        exit;
    }

}