{** block-description:tmpl_search **}
{script src="js/addons/my_module/script.js"}
{$berths_feature_id = "Количество спальных мест"|get_id_feature}

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

        <form action="{"products.search"|fn_url}" name="search_form" method="get" >
{*            <input type="hidden" name="match" value="all" />*}
{*            <input type="hidden" name="subcats" value="Y" />*}
{*            <input type="hidden" name="pcode_from_q" value="Y" />*}
{*            <input type="hidden" name="pshort" value="Y" />*}
{*            <input type="hidden" name="pfull" value="Y" />*}
{*            <input type="hidden" name="pname" value="Y" />*}
{*            <input type="hidden" name="pkeywords" value="Y" />*}
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
                    <input id="date" class="t-15px" placeholder="Add travel dates" autocomplete="off">
                </div>
                <div class="item_search item-3">
                    <span class="t-16px font-weight-bold">Price from — to</span>
                    <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                    </svg><br>
                    <input id="search_price" class="t-15px" placeholder="Type in rent amount" autocomplete="off">
                    <div class="select_price" >
                        <div class="from d-flex flex-column">
                            <span class="t-15px t-gray-op6">From</span>
                            <div class="d-flex justify-content-between">
                                <input class="t-22px font-weight-500 t-gray-op5 input-long" name="price_from" value="">
                                <div class="symbol t-22px font-weight-500 ">
                                    {$currencies.$secondary_currency.symbol}
                                </div>
                            </div>
                        </div>
                        <div class="to d-flex flex-column">
                            <span class="t-15px t-gray-op6">To</span>
                            <div class="d-flex justify-content-between">
                                <input class="t-22px font-weight-500 t-gray-op5 input-long" name="price_to" value="">
                                <div class="t-22px font-weight-500">
                                    {$currencies.$secondary_currency.symbol}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item_search item-4">
                    <span class="t-16px font-weight-bold">Team</span>
                    <svg width="8" height="7" viewBox="0 0 8 7" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M7.31073 0H0.689272C0.382143 0 0.189596 0.331793 0.341974 0.598455L3.6527 6.39223C3.80626 6.66096 4.19374 6.66096 4.3473 6.39223L7.65803 0.598456C7.8104 0.331793 7.61786 0 7.31073 0Z" fill="#2466F6"/>
                    </svg><br>
{*                    <input id="search_team" class="t-15px" placeholder="Add team members" autocomplete="off">*}
                    <input type="number" id="search_team" class="search_team t-15px" placeholder="Add team members" name="feature_variants[{$berths_feature_id}][]" value="" />
                    <input type="hidden" class="search_team" name="feature_variants[{$berths_feature_id}][]" value="" />
                    <div class="select_team d-flex flex-column">
                        <div class="item d-flex">
                            <div class="d-flex flex-column w-50">
                                <div class="t-16px font-weight-bold">
                                    {__('adults')}
                                </div>
                                <div class="t-15px ">
                                    {__('adults_info')}
                                </div>
                            </div>
                            <div class="select_number d-flex w-50">
                                <span class="minus pointer">
                                    <i class="fas fa-minus"></i>
                                </span>
                                <input name="" class="t-22px font-weight-500 numbers_team" type="number" value="0" min="0">
                                <span class="plus pointer">
                                    <i class="fas fa-plus"></i>
                                </span>
                            </div>
                        </div>
{*                        <div class="item d-flex">*}
{*                            <div class="d-flex flex-column w-50">*}
{*                                <div class="t-16px font-weight-bold">*}
{*                                    {__('children')}*}
{*                                </div>*}
{*                                <div class="t-15px ">*}
{*                                    {__('children_info')}*}
{*                                </div>*}
{*                            </div>*}
{*                            <div class="select_number d-flex w-50">*}
{*                                <span class="minus pointer">*}
{*                                    <i class="fas fa-minus"></i>*}
{*                                </span>*}
{*                                <input class="t-22px font-weight-500" type="number" value="0" min="0">*}
{*                                <span class="plus pointer">*}
{*                                    <i class="fas fa-plus"></i>*}
{*                                </span>*}
{*                            </div>*}
{*                        </div>*}
{*                        <div class="item d-flex">*}
{*                            <div class="d-flex flex-column w-50">*}
{*                                <div class="t-16px font-weight-bold">*}
{*                                    {__('infants')}*}
{*                                </div>*}
{*                                <div class="t-15px ">*}
{*                                    {__('infants_info')}*}
{*                                </div>*}
{*                            </div>*}
{*                            <div class="select_number d-flex w-50">*}
{*                                <span class="minus pointer">*}
{*                                    <i class="fas fa-minus"></i>*}
{*                                </span>*}
{*                                <input class="t-22px font-weight-500" type="number" value="0" min="0">*}
{*                                <span class="plus pointer">*}
{*                                    <i class="fas fa-plus"></i>*}
{*                                </span>*}
{*                            </div>*}
{*                        </div>*}
                    </div>
                </div>

            </div>
        </form>


        <div class="search_buttons justify-content-between" >
            <div class="left d-flex justify-content-start">
                <a class="btn-search btn-secondary-search t-18px font-weight-500">All 16 filters</a>
                <a class="btn-search btn-secondary-search t-18px font-weight-500">Need help to choose</a>
            </div>
            <div class="right d-flex justify-content-end">
                <a class="btn-search btn-white t-18px font-weight-500">Show boats on map</a>
                <a class="btn-search btn-blue t-18px font-weight-500 cm-submit"
                   data-ca-target-form="search_form"
                   data-ca-dispatch="dispatch[products.search]">
                    Show all boats
                </a>
            </div>
        </div>
    </div>

</div>
<script type="text/javascript">
    (function(_, $) {$ldelim}
    $('#date').dateRangePicker({
        format: 'DD.MM.YY',
        separator: " — ",
        monthSelect: true,
        yearSelect: true,
        language: "{$block.lang_code}",
        startDate: new Date(),
        endDate: moment().startOf('year').add(3, 'year'),
        autoClose: true,
        changeMonth: true,
        changeYear: true,
        selectForward: true,
        autoUpdateInput: true,
        "showTopbar": false,
        "opens": "right"
    });


    $(".search .arrow-bottom").on("click",function (e){
        $(".search .arrow-bottom").toggleClass("active");
        $(".main_search, .search_toggle").slideToggle(300);

    });
    $(document).click(function (e) {
        var container = $(".select_price.active");
        if ($(e.target).attr("class") !== "select_price active" && container.has(e.target).length === 0 && $(e.target).attr('id') !== "search_price"){
            $(".select_price").removeClass('active');
        }
    });
    $("#search_price").on("click", function (e){
        $(".select_price").toggleClass('active');
    });
    $("input[name='price_from']").on('input',function (e){
        $("#search_price").val($(e.target).val() + "{$currencies.$secondary_currency.symbol}");
    });
    $("input[name='price_to']").on('input',function (e){
        var price = $("#search_price");
        var str = price.val().split(" - ");
        if(str.length === 1){
            price.val(price.val() + " - " + $(e.target).val() + "{$currencies.$secondary_currency.symbol}");
        }
        else{
            str[1] = $(e.target).val();
            price.val(str[0] + " - " + str[1] + "{$currencies.$secondary_currency.symbol}");

        }
    });
    $(document).click(function (e) {
        var container = $(".select_team.active");
        if (!$(e.target).hasClass("select_team","active") && container.has(e.target).length === 0 && $(e.target).attr('id') !== "search_team"){
            $(".select_team").removeClass('active');
        }
    });
    $(".search_team").on("click", function (e){
        $(".select_team").toggleClass('active');
    });
    $("input[name='price_from']").on('input',function (e){
        $("#search_price").val($(e.target).val() + "{$currencies.$secondary_currency.symbol}");
    });
    $("input[name='price_to']").on('input',function (e){
        var price = $("#search_price");
        var str = price.val().split(" - ");
        if(str.length === 1){
            price.val(price.val() + " - " + $(e.target).val() + "{$currencies.$secondary_currency.symbol}");
        }
        else{
            str[1] = $(e.target).val();
            price.val(str[0] + " - " + str[1] + "{$currencies.$secondary_currency.symbol}");

        }
    });
    $(".numbers_team").on("change", function (e){
        $(".search_team, #search_team").each(function (index){
            $(this).val($(e.target).val());
        });

    });
    $(".fa-plus").on("click", function (e){
        var input = $(e.target).parent().prev();
        var val =  parseInt(input.val()) + 1;
        input.val(val);
        input.change();
    });
    $(".fa-minus").on("click", function (e){
        var input = $(e.target).parent().next();
        var val = parseInt(input.val()) - 1;
        input.val(val < 0 ? 0 : val );
        input.change();
    });

    {$rdelim}(Tygh, Tygh.$));
</script>
