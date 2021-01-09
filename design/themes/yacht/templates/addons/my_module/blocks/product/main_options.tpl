<div class="boat_order">
    <div class="edit pointer">
        {if $total_price}
            <span class="t-11px t-blue">{__('edit_order')}</span>
            {else}
            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M5.66895 10.332L8.11968 10.0294V10.0294C8.29187 10.0083 8.45206 9.93023 8.57481 9.80764L14.5118 3.87454V3.87454C15.1692 3.21681 15.1692 2.15078 14.5118 1.49305V1.49305C13.8541 0.835651 12.788 0.835651 12.1303 1.49305L6.24856 7.3748V7.3748C6.12944 7.49388 6.05218 7.64841 6.02839 7.81516L5.66895 10.332Z" stroke="#2466F6" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M7.9051 1.77368H4.11204C2.39331 1.77368 1 3.16699 1 4.88572V11.8878C1 13.6065 2.39331 14.9999 4.11204 14.9999H11.1141C12.8329 14.9999 14.2262 13.6065 14.2262 11.8878V8.09475" stroke="#2466F6" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <span class="t-16px t-blue-a font-weight-600">{__('edit')}</span>
        {/if}

    </div>
    <div class="item d-flex">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C10.343 13 9 11.657 9 10C9 8.343 10.343 7 12 7C13.657 7 15 8.343 15 10C15 11.657 13.657 13 12 13Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M12 21C12 21 5 15.25 5 10C5 6.134 8.134 3 12 3C15.866 3 19 6.134 19 10C19 15.25 12 21 12 21Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
        <div class="title d-flex flex-column">
            <div  class="t-15px t-gray-op5">{__('location')}</div>
            <input name="product_data[location_start]" class="input w-100 t-18px font-weight-600"  value="{$location}" autocomplete="off">
        </div>
    </div>
    <div class="item">
        <div class="d-flex align-items-baseline" >
            <input id="diff_location"  type="checkbox">
            <label class="t-15px t-gray-op5" for="diff_location">{__('drop_location_text')}</label>
        </div>
        <div class="location_end" id="location_toggle">
            <div class="d-flex ">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 13C10.343 13 9 11.657 9 10C9 8.343 10.343 7 12 7C13.657 7 15 8.343 15 10C15 11.657 13.657 13 12 13Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M12 21C12 21 5 15.25 5 10C5 6.134 8.134 3 12 3C15.866 3 19 6.134 19 10C19 15.25 12 21 12 21Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <div class="title ">
                    <div  class="t-15px t-gray-op5 ">{__('drop_location')}</div>
                    <input class="input w-100 t-18px font-weight-600" name="product_data[location_end]"  value=" " autocomplete="off">
                </div>
            </div>
        </div>

    </div>
    <div class="item d-flex">
        <svg width="20" height="21" viewBox="0 0 20 21" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M19 7.99609H1" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M6 1.87598V4.12598" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M14 1.87598V4.12598" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M16 20H4C2.343 20 1 18.657 1 17V6C1 4.343 2.343 3 4 3H16C17.657 3 19 4.343 19 6V17C19 18.657 17.657 20 16 20Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
        <div class="title d-flex flex-column">
            <div  class="t-15px t-gray-op5">{__('check_in')} — {__('check_out')}</div>
            <input id="date" name="product_data[reservation_date]" class="date input w-100 t-18px font-weight-600"  value="{$product.available_dates[0].time_start|date_format:"%b %d,%Y"} — {$product.available_dates[0].time_end|date_format:"%b %d,%Y"}" autocomplete="off">
        </div>
    </div>
    <div class="item d-flex">
        <svg width="22" height="16" viewBox="0 0 22 16" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1 15C1 12.791 2.791 11 5 11H9C11.209 11 13 12.791 13 15" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M9.47488 2.02513C10.8417 3.39197 10.8417 5.60804 9.47488 6.97488C8.10804 8.34172 5.89197 8.34172 4.52513 6.97488C3.15829 5.60804 3.15829 3.39197 4.52513 2.02513C5.89197 0.65829 8.10804 0.65829 9.47488 2.02513" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M15 10H18C19.657 10 21 11.343 21 13" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M18.2678 2.73223C19.2441 3.70854 19.2441 5.29145 18.2678 6.26776C17.2915 7.24407 15.7085 7.24407 14.7322 6.26776C13.7559 5.29145 13.7559 3.70854 14.7322 2.73223C15.7085 1.75592 17.2915 1.75592 18.2678 2.73223" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
        </svg>
        <div class="title d-flex flex-column">
            <div  class="t-15px t-gray-op5">{__('team')}</div>
            <input class="input w-100 t-18px font-weight-600" name="product_data[team]"  value="4 {__('adults')}, 2 {__('children')}" autocomplete="off">
        </div>
    </div>
    <div class="item d-flex justify-content-between">
        <div class="d-flex">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M13.494 12C12.666 12.006 12 12.678 12 13.506C12 14.334 12.672 15.006 13.5 15C14.328 15 15 14.328 15 13.5C15 12.672 14.328 12 13.494 12Z" fill="black"/>
                <path d="M3 6.283V6C3 4.343 4.343 3 6 3H18C19.657 3 21 4.343 21 6V15C21 16.657 19.657 18 18 18H17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M21 9H17" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M13.325 20.922C15.205 21.356 17 19.928 17 17.999V9.38705C17 7.99005 16.036 6.77805 14.675 6.46405L5.45 4.33505C4.196 4.04505 3 4.99705 3 6.28305V16.152C3 17.549 3.964 18.761 5.325 19.075L13.325 20.922V20.922Z" stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
            <div class="title d-flex flex-column">
                <div  class="t-15px t-gray-op5">{__('price')}</div>
                <div class="t-18px font-weight-600">
                    <div>
                                        <span class="t-15px font-weight-600">
                                            € 12 496
                                        </span>
                        <span class="t-15px t-gray-op5">
                                            / € 1435 {__('per_day')}
                                        </span>
                    </div>
                </div>
            </div>
        </div>
        {if $total_price}
            <div class="d-flex">
                <div class="title d-flex flex-column">
                    <div  class="t-15px t-gray-op5">{__('total_price')}</div>
                    <div class="t-18px font-weight-600">
                        <div>
                                        <span class="t-15px font-weight-600">
                                            € 43 564
                                        </span>

                        </div>
                    </div>
                </div>
            </div>
        {/if}
    </div>
</div>
<script type="text/javascript">
    (function(_, $) {$ldelim}
    var dates = {$product.available_dates|json_encode nofilter};
    $('#date').dateRangePicker({
        format: 'MMM DD, YYYY',
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
        beforeShowDay: function(t)
        {
            let valid = false;
            dates.forEach(function (date){
                let start = new Date(date.time_start*1000);
                let end = new Date(date.time_end*1000);
                if(t >= start && t <= end){
                    valid = true;
                }
            });
            return [valid,'',''];
        }
    });

    {$rdelim}(Tygh, Tygh.$));
</script>