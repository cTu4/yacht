<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    return;
}
function select_ids($select,$table,$filters, $filter_on){
    $sql = "select ".$select." from ?:".$table." where (";
    foreach ($filters as $filter){
        $sql .= " ".$filter_on."='".$filter."' or";
    }
    $sql = substr($sql, 0, -3);
    $sql .= ") and lang_code='ru'";
    $ids = db_get_fields($sql);
    return $ids;
}
if ($mode == 'view') {

    $features_ids = [];
    $id_feature_location = db_get_field('select feature_id from ?:product_features_descriptions where description="Расположение"');
    $features_ids["location"]=$id_feature_location;
    $id_feature_amenities = db_get_field('select feature_id from ?:product_features_descriptions where description="Удобства"');
    $features_ids["amenities"]=$id_feature_amenities;
    $sql = "select feature_id from ?:product_features_descriptions where (";
    foreach (features_names as $feature){
        $sql .= " description='".$feature."' or";
    }
    $sql = substr($sql, 0, -3);
    $sql .= ") and lang_code='ru'";
    $ids = db_get_fields($sql);
    array_push($ids,$id_feature_location,$id_feature_amenities);

    $option_variant_ids = select_ids('variant_id','product_feature_variant_descriptions',boat_options_name,'variant');

    $card_features = fn_get_product_features([
        "product_id"=>$_REQUEST['product_id'],
        "feature_id"=> $ids,
        "variants"=>true
    ]);
    $card_data = [];

    foreach ($card_features[0] as $card_feature){
        switch ($card_feature['description']){
            case features_names[0]:
                $card_data['double_cabins']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                break;
            case features_names[1]:
                $card_data['single_cabins']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                break;
            case features_names[2]:
                $card_data['double_sleep_place']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                break;
            case features_names[3]:
                $card_data['single_sleep_place']=$card_feature['variant_id']?$card_feature['variants'][$card_feature['variant_id']]['variant']:'';
                break;
            case "Удобства":
                foreach ($card_feature['variants'] as $variant){
                    switch ($variant['variant']){
                        case boat_options_name[0]:
                            $card_data['shower'] = !empty($variant['selected']);
                            break;
                        case boat_options_name[1]:
                            $card_data['kitchen'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["wi_fi"]:
                            $card_data['wi_fi'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["bath_accessories"]:
                            $card_data['bath_accessories'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["dishes"]:
                            $card_data['dishes'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["cinema"]:
                            $card_data['cinema'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["pool"]:
                            $card_data['pool'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["bar"]:
                            $card_data['bar'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["pets"]:
                            $card_data['pets'] = !empty($variant['selected']);
                            break;
                        case boat_addons_name["washer"]:
                            $card_data['washer'] = !empty($variant['selected']);
                            break;
                    }


                }
                break;
        }
    }

    Tygh::$app['view']->assign('card_data', $card_data);
    Tygh::$app['view']->assign('features_ids', $features_ids);




}