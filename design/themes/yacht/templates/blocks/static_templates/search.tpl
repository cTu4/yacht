{** block-description:tmpl_search **}
{script src="js/addons/my_module/script.js"}
<div class="search d-flex flex-column">


    <span class="t-32px font-weight-600">The ideal boat will be found anywhere in the world.<br/>
    Choose the country where you want to go on a maritime journey.</span>

    <form action="{""|fn_url}" name="search_form" method="get">
        <input type="hidden" name="match" value="all" />
        <input type="hidden" name="subcats" value="Y" />
        <input type="hidden" name="pcode_from_q" value="Y" />
        <input type="hidden" name="pshort" value="Y" />
        <input type="hidden" name="pfull" value="Y" />
        <input type="hidden" name="pname" value="Y" />
        <input type="hidden" name="pkeywords" value="Y" />
        <input type="hidden" name="search_performed" value="Y" />
        {strip}
            {if $settings.General.search_objects}
                {assign var="search_title" value=__("search")}
            {else}
                {assign var="search_title" value=__("search_products")}
            {/if}
            <input style="margin:10px 5px" type="text" name="q" value="{$search.q}" id="search_input{$smarty.capture.search_input_id}" title="{$search_title}" class="ty-search-block__input cm-hint" />
        {/strip}
        {capture name="search_input_id"}{$block.snapping_id}{/capture}
        <div class="input_search d-flex">
            <div class="item_search"><span class="t-16px font-weight-bold">Location</span>
                <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                </svg><br>
                <span class="t-15px">Where are you going</span></div>
            <div class="item_search"><span class="t-16px font-weight-bold">Check in — Check out</span>
                <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                </svg><br>
                <span class="t-15px">Add travel dates</span></div>
            <div class="item_search"><span class="t-16px font-weight-bold">Price from — to</span>
                <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                </svg><br>
                <span class="t-15px">Type in rent amount</span></div>
            <div class="item_search"><span class="t-16px font-weight-bold">Team</span>
                <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                </svg><br>
                <span class="t-15px">Add team members</span></div>
        </div>
    </form>


    <div class="search_buttons d-flex justify-content-between">
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
