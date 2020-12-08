<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;


if ($mode == 'update') {



Registry::set('navigation.tabs.reservation', [
'title' => __('reservation'),
'js'    => true,
]);



} elseif ($mode == 'manage') {

$selected_fields = Tygh::$app['view']->getTemplateVars('selected_fields');

$selected_fields[] = array(
'name' => '[products_data][discussion_type]',
'text' => __('discussion_title_product')
);

Tygh::$app['view']->assign('selected_fields', $selected_fields);

} elseif ($mode == 'm_update') {

$selected_fields = Tygh::$app['session']['selected_fields'];

if (!empty($selected_fields['products_data'])) {

$field_groups = Tygh::$app['view']->getTemplateVars('field_groups');
$filled_groups = Tygh::$app['view']->getTemplateVars('filled_groups');

$field_groups['S']['discussion_type'] = array(
'name' => 'products_data',
'variants' => array (
'D' => 'disabled',
'C' => 'communication',
'R' => 'rating',
'B' => 'all'
)
);

$filled_groups['S']['discussion_type'] = __('discussion_title_product');

Tygh::$app['view']->assign('field_groups', $field_groups);
Tygh::$app['view']->assign('filled_groups', $filled_groups);
}
}