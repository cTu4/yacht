
<div id="content_reservation" class="hidden">
    <h3>Укажите доступные даты бронирования</h3>
        {if $reservations}
            {foreach from=$reservations item="reservation" name="for_reserv"}
                <li id="item-{$smarty.foreach.for_reserv.iteration}" >
                    <input type="hidden" name=reservations[{$smarty.foreach.for_reserv.index}_update][id_reservation]" value="{$reservation.reservation_id}">
                        <input type="text" class="date input-long user-success" name="reservations[{$smarty.foreach.for_reserv.index}_update][time_start]" class="w-100 t-18px font-weight-600"  value="{$reservation.time_start|date_format:"%b %d,%Y"} — {$reservation.time_end|date_format:"%b %d,%Y"}" autocomplete="off">
                    <a class="icon-plus cm-tooltip" name="add" title="{__('addcm-tooltip pointer_dates')}" onclick="$.ceEvent('trigger', 'ce.add_calendar',  [this,{$smarty.foreach.for_reserv.index},'{$smarty.const.CART_LANGUAGE}']);"></a>
                    <a class="cm-tooltip" name="remove" title="{__('remove_dates')}" onclick="$.ceEvent('trigger', 'ce.delete_reservation',  [this,{$reservation.reservation_id}]);">
                        <i class="icon-remove"></i>
                    </a>

                </li>
            {/foreach}
        {else}
            <li id="item-add">
                <input type="text" name="reservations_add[0][time_start]" class="date input-long user-success w-100 t-18px font-weight-600"  autocomplete="off">
                <a class="icon-plus cm-tooltip" name="add" onclick="$.ceEvent('trigger', 'ce.add_calendar',  [this,{$smarty.foreach.for_reserv.index+1},'{$smarty.const.CART_LANGUAGE}']);"></a>
                <a class="icon-remove cm-tooltip" name="remove" onclick="$.ceEvent('trigger', 'ce.delete_reservation',  [this,{$smarty.foreach.for_reserv.index+1},'{$smarty.const.CART_LANGUAGE}']);">
                </a>
            </li>
        {/if}
</div>
<script type="text/javascript">
    (function(_, $) {$ldelim}
    $('.date').each(function (){
        console.log($(this));
        $(this).dateRangePicker({
            format: 'MMM DD, YYYY',
            separator: " — ",
            monthSelect: true,
            yearSelect: true,
            language: "{$smarty.const.CART_LANGUAGE|escape}",
            startDate: new Date(),
            endDate: moment().startOf('year').add(3, 'year'),
            autoClose: true,
            changeMonth: true,
            changeYear: true,
            selectForward: true,
            autoUpdateInput: true
        });
    });


    {$rdelim}(Tygh, Tygh.$));
</script>
{script src="js/addons/my_module/reservation.js"}
