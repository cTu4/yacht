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
            <div  class="product">
                <svg class="heart pointer" width="26" height="23" viewBox="0 0 26 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.65939 0.504936C9.25279 0.569987 10.4918 1.17498 11.3372 1.76891C11.7598 2.06578 12.0811 2.35803 12.2952 2.57405C12.4021 2.68192 12.4817 2.77031 12.5334 2.83013C12.5593 2.86003 12.5781 2.88273 12.5898 2.89711L12.602 2.91225L12.6033 2.914L12.6036 2.9143L12.6038 2.91455L12.604 2.91486C12.6041 2.91501 12.6041 2.91501 12.604 2.91487L12.9998 3.42984L13.3955 2.91497L13.3956 2.91487L13.3956 2.91486L13.3958 2.91455L13.396 2.9143L13.3962 2.914L13.3976 2.91225L13.4098 2.89711C13.4215 2.88273 13.4403 2.86003 13.4661 2.83013C13.5178 2.77031 13.5975 2.68192 13.7044 2.57405C13.9184 2.35803 14.2398 2.06578 14.6624 1.76891C15.5078 1.17498 16.7468 0.569987 18.3402 0.504936C20.452 0.41884 22.4096 1.46816 23.7111 3.18826L23.7112 3.18849C25.9275 6.11424 24.9918 9.31142 23.0802 12.1647C21.4388 14.6147 19.1662 16.669 17.8613 17.8486C17.6483 18.0412 17.461 18.2104 17.3066 18.3543C16.0246 19.548 14.4406 20.9674 13.4937 21.8099L13.4934 21.8101C13.2092 22.0633 12.7891 22.0633 12.5049 21.8101L12.5046 21.8099C11.5578 20.9674 9.97371 19.548 8.69177 18.3543C8.53741 18.2105 8.35035 18.0414 8.13754 17.849C6.8328 16.6696 4.56008 14.6151 2.91863 12.1648C1.00718 9.31142 0.0713811 6.1142 2.28713 3.18844L2.28713 3.18844C3.58994 1.46814 5.54761 0.41884 7.65939 0.504936ZM7.65939 0.504936L7.67979 0.00535215L7.65939 0.504936Z" fill="black" fill-opacity="0.2" stroke="white"/>
                </svg>
                <div class="types_boat d-flex">
                    {if $product.checked == "Y"}
                        <span class="cart_type_boat t-green t-12px font-weight-500">
                            {__('checked')}
                        </span>
                    {/if}
                    {if $product.lux == "Y"}
                        <span class="cart_type_boat t-gold t-12px font-weight-500">
                            {__('lux')}
                        </span>
                    {/if}
                    {if $product.plus == "Y"}
                        <span class="cart_type_boat t-purple t-12px font-weight-500">
                            {__('plus')}
                        </span>
                    {/if}
                </div>
                <div class="owl-carousel owl-carousel-search owl-theme">
                    <img src="{$product.main_pair.detailed.image_path}">
                    {if $product.image_pairs}
                        {foreach from=$product.image_pairs item="image" name="foo"}
                            <img src="{$image.detailed.image_path}">
                        {/foreach}
                    {/if}
                </div>

                <div class="title d-flex flex-column pointer">
                        <div class="t-11px">
                            <svg class="align-baseline" width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M5.9998 8.88271L8.47363 10.3744C8.86394 10.6097 9.34536 10.26 9.24181 9.81683L8.58514 7.00501L10.7712 5.1129C11.1157 4.81495 10.9315 4.24941 10.4775 4.21111L7.5999 3.96738L6.47426 1.31374C6.29652 0.895421 5.70309 0.895421 5.52535 1.31374L4.39971 3.96738L1.52214 4.21111C1.0681 4.24941 0.88389 4.81495 1.2284 5.1129L3.41447 7.00501L2.7578 9.81683C2.65425 10.26 3.13567 10.6097 3.52598 10.3744L5.9998 8.88271Z" fill="#EB2A50"/>
                            </svg>
                            4.81 (27) • Ibiza
                        </div>
                        <div class=" t-17px font-weight-500">{$product.product}</div>
                        <div class=" t-13px">
                            {$product.single_cabins + $product.doible_cabins} {__('cabins')},
                            {$product.double_sleep_place + $product.single_sleep_place} {__('berths')},
                            {$product.baths} {__('baths')}</div>
                        <div>
                            <span class="t-18px font-weight-bold" >{include file="common/price.tpl" value=$product.price span_id="discounted_price_`$obj_prefix``$obj_id`" class="ty-price-num" live_editor_name="product:price:{$product.product_id}" live_editor_phrase=$product.base_price}</span> <span class="t-18px">/ {__('day')}</span>
                        </div>

                </div>
            </div>
        {/foreach}
    </div>

    {include file="common/pagination.tpl"}
</div>


