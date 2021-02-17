{** block-description:tmpl_search **}
{script src="js/addons/my_module/script.js"}
<div class="search margin_center d-flex justify-content-center flex-column">
    {if $toggle}
        <div class="arrow-bottom pointer">
            <i class="fas fa-chevron-down"></i>
        </div>
        <div class="search_toggle text-center">
            <svg class="loop" width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M11.0899 3.00754C13.5623 5.47992 13.2956 9.64945 10.2937 11.758C8.38324 13.099 5.71467 13.099 3.80419 11.758C0.800378 9.65135 0.535617 5.47992 3.008 3.00754C5.24038 0.775156 8.85944 0.775156 11.0899 3.00754" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M14.6691 14.6666L11.0881 11.0857" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <span class="t-18px font-weight-600 t-white align-middle">{if $search.q}{$search.q}{else}Select filters{/if}</span>
        </div>

    {/if}
    <div class="main_search" {if $toggle}style="display: none"{/if}>
        <div class="title t-32px font-weight-600" >The ideal boat will be found anywhere in the world.<br/>
    Choose the country where you want to go on a maritime journey.</div>

        <form action="{""|fn_url}" name="search_form" method="get" >
            <input type="hidden" name="match" value="all" />
            <input type="hidden" name="subcats" value="Y" />
            <input type="hidden" name="pcode_from_q" value="Y" />
            <input type="hidden" name="pshort" value="Y" />
            <input type="hidden" name="pfull" value="Y" />
            <input type="hidden" name="pname" value="Y" />
            <input type="hidden" name="pkeywords" value="Y" />
            <input type="hidden" name="search_performed" value="Y" />
            <input type="hidden" name="items_per_page" value="{$settings.Appearance.products_per_page}" />
            {strip}
                {if $settings.General.search_objects}
                    {assign var="search_title" value=__("search")}
                {else}
                    {assign var="search_title" value=__("search_products")}
                {/if}
{*                <input type="text" name="q" value="{$search.q}" id="search_input{$smarty.capture.search_input_id}" title="{$search_title}" class="ty-search-block__input cm-hint" />*}
                {if $settings.General.search_objects}
                    <input type="hidden" name="dispatch" value="search.results" />
                {else}
                    <input type="hidden" name="dispatch" value="products.search" />
                {/if}
            {/strip}
            {capture name="search_input_id"}{$block.snapping_id}{/capture}
            <div class="input_search d-flex">
                <div class="item_search item_1">
                    <span class="t-16px font-weight-bold">Location</span>
                    <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                    </svg><br>
                    <span class="t-15px">Where are you going</span></div>
                <div class="item_search item_2">
                    <span class="t-16px font-weight-bold">Check in — Check out</span>
                    <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                    </svg><br>
                    <span class="t-15px">Add travel dates</span></div>
                <div class="item_search">
                    <span class="t-16px font-weight-bold">Price from — to</span>
                    <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                    </svg><br>
                    <span class="t-15px">Type in rent amount</span></div>
                <div class="item_search">
                    <span class="t-16px font-weight-bold">Team</span>
                    <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                    </svg><br>
                    <span class="t-15px">Add team members</span></div>
            </div>
        </form>


        <div class="search_buttons justify-content-between" >
            <div class="left d-flex justify-content-start">
                <a class="btn-search btn-secondary-search t-18px font-weight-500">All 16 filters</a>
                <a class="btn-search btn-secondary-search t-18px font-weight-500">Need help to choose</a>
            </div>
            <div class="right d-flex justify-content-end">
                <a class="btn-search btn-white t-18px font-weight-500">Show boats on map</a>
                <a class="btn-search btn-blue t-18px font-weight-500">Show all boats</a>
            </div>
        </div>
    </div>

</div>
