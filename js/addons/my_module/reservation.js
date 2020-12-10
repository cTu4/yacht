(function(_, $) {
    $('#content_reservation .item .icon-plus').on('click',function (e) {
        let index = $(e.target).parent().prev().html();
        index = +index.substring(0, index.length - 2) + 1;
        let reservation = $('<label/>',{
            class: "control-label",
            for: `item-{index}`
        });
        $('#content_reservation').append(reservation);

        // <label class="control-label" for="item-{$reservation.reservation_id}">{$smarty.foreach.for_reserv.iteration}. </label>
        // <div id="item-{$smarty.foreach.for_reserv.iteration}">
        //     {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_start" date_name="reservations[{$reservation.reservation_id}][time_start]" date_val={$reservation.time_start}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}
        //     {include file="common/calendar.tpl" date_id="elm_reservation_holder_{$reservation.reservation_id}_end" date_name="reservations[{$reservation.reservation_id}][time_end]" date_val={$reservation.time_end}|default:$smarty.const.TIME start_year=$settings.Company.company_start_year}
        // </div>
        console.log(index);

    });
})(Tygh, Tygh.$);
