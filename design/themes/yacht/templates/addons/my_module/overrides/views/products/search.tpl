{include file="common/pagination.tpl"}
{*{script src="js/addons/my_module/script.js"}*}
<div class="">
    {include file="blocks/static_templates/search.tpl" toggle=true}
    {include file="addons/my_module/blocks/filter.tpl"}
    <div class="products-search-result margin_center d-flex">

        {foreach from=$products item=product}
            {include file="addons/my_module/blocks/product/product.tpl" product=$product}
        {/foreach}
    </div>

    {include file="common/pagination.tpl"}
</div>


