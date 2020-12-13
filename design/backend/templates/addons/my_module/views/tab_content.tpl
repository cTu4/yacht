
<div id="content_reservation" class="hidden">
    {foreach from=$reservations item="reservation" name="for_reserv"}
        <label class="control-label" for="item-{$reservation.reservation_id}">{$smarty.foreach.for_reserv.iteration}. </label>
        <div id="item-{$smarty.foreach.for_reserv.iteration}">
            {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_start" date_name="reservations[{$reservation.reservation_id}][time_start]" date_val={$reservation.time_start}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}
            {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_end" date_name="reservations[{$reservation.reservation_id}][time_end]" date_val={$reservation.time_end}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}
        </div>
    {/foreach}

    <label class="control-label" for="item-{$smarty.foreach.for_reserv.iteration + 1}">{$smarty.foreach.for_reserv.iteration + 1}. </label>
    <div id="item-{$smarty.foreach.for_reserv.iteration + 1}" class="item">
        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_start_1" date_name="reservations[add_1][time_start]"  start_year=$settings.Company.company_start_year}
        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_end_1" date_name="reservations[add_1][time_end]"  start_year=$settings.Company.company_start_year}
        <i class="icon-plus"></i>

    </div>

</div>
{script src="js/addons/my_module/reservation.js"}
