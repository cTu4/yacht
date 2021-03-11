{*{$product|fn_print_r}*}
{$feature_location = $product.product_features[$features_ids['location']]}
{$location = $feature_location['variants'][$feature_location.variant_id].variant}
<div class="d-flex">
    <div class="col-7" style="background: #0e90d2; height: 100px">

    </div>
        <form class="options col-5 form-edit cm-disable-empty-files cm-processed-form cm-check-changes" enctype="multipart/form-data" novalidate="novalidate" action="{$config.http_path}/services" method="post" name="product_data">
            <input type="hidden" name="product_id" value="{$product.product_id}">
            {include file="addons/my_module/blocks/product/main_options.tpl"
                location=$location
                product=$product
                total_price=true
            }
        </form>
</div>
