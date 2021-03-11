<?php

use Tygh\Registry;
use Tygh\Tygh;

if (!defined('BOOTSTRAP')) { die('Access denied'); }

if($mode == 'add' || $mode == 'update') {
    $view = Tygh::$app['view'];
    $view->assign('zero_company_id_name_lang_var', 'master_products.all_vendors_master_product');
}