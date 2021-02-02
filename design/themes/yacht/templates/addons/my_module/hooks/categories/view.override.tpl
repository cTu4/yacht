{hook name="categories:view"}
    {include file="common/pagination.tpl"}
    {*{script src="js/addons/my_module/script.js"}*}
            <div class="products_category d-flex" id="category_products">
                {$is_selected_filters = $smarty.request.features_hash}

            {foreach from=$products item=product}
                {include file="addons/my_module/blocks/product/product.tpl" product=$product}
            {/foreach}
                <!--category_products--></div>

        {include file="common/pagination.tpl"}

{capture name="mainbox_title"}<span class="t-28px font-weight-bold" {live_edit name="category:category:{$category_data.category_id}"}>{$category_data.category}</span>{/capture}
{/hook}
