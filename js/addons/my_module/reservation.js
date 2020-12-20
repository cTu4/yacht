(function(_, $) {
    $.ceEvent('on', 'ce.add_calendar', function(el,index,lang) {

        let item = $('<li>');
        item.append('<input>',{
            type:"hidden",
            name: `reservations_add[${index}]['id_reservation']`
        });

        $('#content_reservation').append(`
        <li id="item-add">
                <span class="date">
                        <input name="reservations_add[${index}][time_start]" class="date_start input w-100 t-18px font-weight-600"  autocomplete="off"></input>
                         —
                        <input name="reservations_add[${index}][time_end]" class="date_end input w-100 t-18px font-weight-600" autocomplete="off"></input>
                </span>
                <a class="icon-plus cm-tooltip" name="add" onclick="$.ceEvent('trigger', 'ce.add_calendar',  [this,${index+1},${lang}]);"></a>
         </li>
        `);
        $(el).parent().next().find('.date').dateRangePicker({
            format: 'MMM DD, YYYY',
            separator: " — ",
            getValue: function()
            {
                console.log(this);
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
            language: lang,
            startDate: new Date(),
            endDate: moment().startOf('year').add(3, 'year'),
            autoClose: true,
            changeMonth: true,
            changeYear: true,
            selectForward: true,
            autoUpdateInput: true
        });
    });
}(Tygh, Tygh.$));

