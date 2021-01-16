<?php
use Tygh\Enum\Addons\Discussion\DiscussionObjectTypes;
use Tygh\Enum\Addons\Discussion\DiscussionTypes;
use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    return;
}

if ($mode == 'test') {

    $features = [
        [
            "description" => "Удобства",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "multiple_checkbox",
            "filter_style" => "checkbox",
            "feature_type" => "M",
            "position" =>1,
            "variants"=>[
                [
                    "variant"=> "Наличие душа"
                ],
                [
                    "variant" => "Наличие кухни"
                ],
                [
                    "variant" => "Wi-Fi"
                ],
                [
                    "variant" => "Банные акксессуары"
                ],
                [
                    "variant" => "Питание"
                ],
                [
                    "variant" => "Кинотеатр"
                ],
                [
                    "variant" => "Бассейн"
                ],
                [
                    "variant" => "Мини-бар"

                ],
                [
                    "variant" => "Можно с животными"
                ],
                [
                    "variant" => "Стиральная машина"
                ]
            ]
        ],
        [
            "description" => "Количество кают для двоих",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "slider",
            "feature_type" => "N",
            "variants"=>[
                [
                    "variant"=> 1
                ]
            ]
        ],
        [
            "description" => "Количество кают для одного",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "slider",
            "feature_type" => "N",
            "variants"=>[
                [
                    "variant"=> 1
                ]
            ]
        ],
        [
            "description" => "Количество спальных мест для одного",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "slider",
            "feature_type" => "N",
            "variants"=>[
                [
                    "variant"=> 1
                ]
            ]
        ],
        [
            "description" => "Количество спальных мест для двоих",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "slider",
            "feature_type" => "N",
            "variants"=>[
                [
                    "variant"=> 1
                ]
            ]
        ],
        [
            "description" => "Количество ванных комнат",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "slider",
            "feature_type" => "N",
            "variants"=>[
                [
                    "variant"=> 1
                ]
            ]
        ],
        [
            "description" => "Расположение",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "text",
            "filter_style" => "checkbox",
            "feature_type" => "S",
            "position" =>1
        ],
        [
            "description" => "Тип яхты",
            "company_id" => 1,
            "purpose" => "find_products",
            "feature_style" => "checkbox",
            "filter_style" => "checkbox",
            "feature_type" => "S",
            "position" => 11,
            "variants" => [
                [
                    "position" => 1,
                    "variant" => "Проверено"
                ],
                [
                    "position" => 2,
                    "variant" => "Плюс"
                ],
                [
                    "position" => 3,
                    "variant" => "Люкс"
                ]
            ]
        ]
    ];
    foreach ($features as $keyFeature => $feature){
        $id_feature = db_get_field("select feature_id from ?:product_features_descriptions where description=?s",$feature['description']);
        if(!$id_feature){
            fn_update_product_feature($feature,0);
        }
    }


}