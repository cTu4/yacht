
<div id="content_reservation" class="hidden">
    <h3>Укажите доступные даты бронирования</h3>
    <ul>
        {if $reservations}
            {foreach from=$reservations item="reservation" name="for_reserv"}
                <li id="item-{$smarty.foreach.for_reserv.iteration}">
                    {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_start" date_name="reservations[{$reservation.reservation_id}][time_start]" date_val={$reservation.time_start}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}
                    {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_end" date_name="reservations[{$reservation.reservation_id}][time_end]" date_val={$reservation.time_end}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}
                    {include file="buttons/add_empty_item.tpl" but_onclick="Tygh.$('#item-{$smarty.foreach.for_reserv.iteration}').cloneNode(1);" item_id="{$smarty.foreach.for_reserv.iteration + 1}"}
                </li>
            {/foreach}
        {else}
            <li id="item-add">
                {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_start" date_name="reservations[add][time_start]" start_year=$settings.Company.company_start_year}
                {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_end" date_name="reservations[add][time_end]" start_year=$settings.Company.company_start_year}
                {include file="buttons/add_empty_item.tpl" but_onclick="Tygh.$(this).parent().cloneNode(1); console.log( $(this).parent().next().find('label').html( +$(this).siblings('label').html().slice(0,-2) + 1 +'. '));" item_id="add_1"}
            </li>
        {/if}
    </ul>

{*       $(this).parent().next().find('label').html( +$(this).siblings('label').html().slice(0,-2) + 1)*}
{*        $(this).parent().next().find('label').html()*}
{*    <label class="control-label" for="item-{$smarty.foreach.for_reserv.iteration + 1}">{$smarty.foreach.for_reserv.iteration + 1}. </label>*}
{*    <div id="item-{$smarty.foreach.for_reserv.iteration + 1}" class="item">*}
{*        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_start_1" date_name="reservations[add_1][time_start]"  start_year=$settings.Company.company_start_year}*}
{*        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_end_1" date_name="reservations[add_1][time_end]"  start_year=$settings.Company.company_start_year}*}
{*        <i class="icon-plus"></i>*}

{*    </div>*}

</div>
{script src="js/addons/my_module/reservation.js"}
