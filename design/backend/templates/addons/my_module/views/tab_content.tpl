
<div id="content_reservation" class="hidden">
    <h3>Укажите доступные даты бронирования</h3>
        {if $reservations}
            {foreach from=$reservations item="reservation" name="for_reserv"}

                <li id="item-{$smarty.foreach.for_reserv.iteration}">
                    <input type="hidden" name=reservations[{$smarty.foreach.for_reserv.index}_update][id_reservation]" value="{$reservation.reservation_id}">
                    <span class="date">
                        <input name="reservations[{$smarty.foreach.for_reserv.index}_update][time_start]" class="date_start input w-100 t-18px font-weight-600"  value="{$reservation.time_start|date_format:"%b %d,%Y"}" autocomplete="off"></input>
                         —
                        <input name="reservations[{$smarty.foreach.for_reserv.index}_update][time_end]" class="date_end input w-100 t-18px font-weight-600"  value="{$reservation.time_end|date_format:"%b %d,%Y"}" autocomplete="off"></input>
                    </span>
                    <a class="icon-plus cm-tooltip" name="add" onclick="$.ceEvent('trigger', 'ce.add_calendar',  [this,{$smarty.foreach.for_reserv.index},{$block.lang_code}]);"></a>
                </li>
            {/foreach}
        {else}
            <li id="item-add">
                <span class="date">
                        <input name="reservations_add[0][time_start]" class="date_start input w-100 t-18px font-weight-600"  autocomplete="off"></input>
                         —
                        <input name="reservations_add[0][time_end]" class="date_end input w-100 t-18px font-weight-600"  autocomplete="off"></input>
                    </span>
                <a class="icon-plus cm-tooltip" name="add" onclick="$.ceEvent('trigger', 'ce.add_calendar',  [this,{$smarty.foreach.for_reserv.index+1},{$block.lang_code}]);"></a>
            </li>
        {/if}
{*    <ul>*}
{*        {if $reservations}*}
{*            {foreach from=$reservations item="reservation" name="for_reserv"}*}
{*                <li id="item-{$smarty.foreach.for_reserv.iteration}">*}

{*                    {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_start" date_name="reservations[{$reservation.reservation_id}][time_start]" date_val={$reservation.time_start}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}*}
{*                    {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_end" date_name="reservations[{$reservation.reservation_id}][time_end]" date_val={$reservation.time_end}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}*}
{*                    {include file="buttons/add_empty_item.tpl" but_onclick="Tygh.$('#item-{$smarty.foreach.for_reserv.iteration}').cloneNode(1);" item_id="{$smarty.foreach.for_reserv.iteration + 1}"}*}
{*                </li>*}
{*            {/foreach}*}
{*        {else}*}
{*            <li id="item-add">*}
{*                {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_start" date_name="reservations[add][time_start]" start_year=$settings.Company.company_start_year}*}
{*                {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_end" date_name="reservations[add][time_end]" start_year=$settings.Company.company_start_year}*}
{*                {include file="buttons/add_empty_item.tpl" but_onclick="Tygh.$(this).parent().cloneNode(1); console.log( $(this).parent().next().find('label').html( +$(this).siblings('label').html().slice(0,-2) + 1 +'. '));" item_id="add_1"}*}
{*            </li>*}
{*        {/if}*}
{*    </ul>*}

{*       $(this).parent().next().find('label').html( +$(this).siblings('label').html().slice(0,-2) + 1)*}
{*        $(this).parent().next().find('label').html()*}
{*    <label class="control-label" for="item-{$smarty.foreach.for_reserv.iteration + 1}">{$smarty.foreach.for_reserv.iteration + 1}. </label>*}
{*    <div id="item-{$smarty.foreach.for_reserv.iteration + 1}" class="item">*}
{*        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_start_1" date_name="reservations[add_1][time_start]"  start_year=$settings.Company.company_start_year}*}
{*        {include file="common/calendar.tpl" date_id="elm_reservation_holder_add_end_1" date_name="reservations[add_1][time_end]"  start_year=$settings.Company.company_start_year}*}
{*        <i class="icon-plus"></i>*}

{*    </div>*}

</div>
<script type="text/javascript">
    (function(_, $) {$ldelim}
    var dates = {$reservations|json_encode nofilter};
    console.log(dates);
    $('.date').dateRangePicker({
        format: 'MMM DD, YYYY',
        separator: " — ",
        getValue: function()
        {
            if ($(this).find('.date_start').val() && $(this).find('.date_end').val() )
                return $(this).find('.date_start').val() + $(this).find('.date_end').val();
            else
                return '';
        },
        setValue: function(s,s1,s2)
        {
            $(this).find('.date_start').val(s1);
            $(this).find('.date_end').val(s2);
        },
        monthSelect: true,
        yearSelect: true,
        language: "{$block.lang_code}",
        startDate: new Date(),
        endDate: moment().startOf('year').add(3, 'year'),
        autoClose: true,
        changeMonth: true,
        changeYear: true,
        selectForward: true,
        autoUpdateInput: true
    });

    {$rdelim}(Tygh, Tygh.$));
</script>
{script src="js/addons/my_module/reservation.js"}
