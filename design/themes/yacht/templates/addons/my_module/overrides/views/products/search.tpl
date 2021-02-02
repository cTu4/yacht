{include file="common/pagination.tpl"}
{*{script src="js/addons/my_module/script.js"}*}
<div class="margin_center">
    <div class="info-search-result bot-br-3">
        <div class="title t-28px font-weight-bold">
            {__('result_for')} "{$search.q}": {$search.total_items}
        </div>
        <div class="buttons d-flex justify-content-between">
            <div class="d-flex left">
                <div class="search-result-btn">
                    {__('select_date')}
                </div>
                <div class="search-result-btn">
                    <span>{__('add_vacation')}</span>
                </div>
                <div class="search-result-btn">
                    {__('price_range')}
                </div>
                <div class="search-result-btn">
                    {__('see_all_filters')}
                </div>
            </div>
            <div class="search-result-btn">
                {__('show_on_map')}
            </div>
        </div>
    </div>
    <div class="products-search-result d-flex">

        {foreach from=$products item=product}
            {include file="addons/my_module/blocks/product/product.tpl" product=$product}
        {/foreach}
    </div>

    {include file="common/pagination.tpl"}
</div>


