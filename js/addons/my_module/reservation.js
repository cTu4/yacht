(function(_, $) {
    $.ceEvent('on', 'ce.add_calendar', function(el,index,lang) {

        let item = $('<li>');
        item.append('<input>',{
            type:"hidden",
            name: `reservations_add[${index}]['id_reservation']`
        });

        $('#content_reservation').append(`
        <li id="item-add">
                <input type="text" name="reservations_add[${index}][time_start]" class="input-long user-success w-100 t-18px font-weight-600"  autocomplete="off"></input>
                <a class="icon-plus cm-tooltip" name="add" onclick="$.ceEvent('trigger', 'ce.add_calendar',  [this,{$smarty.foreach.for_reserv.index+1},'${lang}']);"></a>
                <a class="cm-tooltip" name="remove" onclick="$.ceEvent('trigger', 'ce.delete_reservation',  [this,{$smarty.foreach.for_reserv.index+1},'${lang}']);">
                    <i class="icon-remove"></i>
                </a>
            </li>
        `);
        $(el).parent().next().dateRangePicker({
            format: 'MMM DD, YYYY',
            separator: " — ",
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

    $.ceEvent('on', 'ce.delete_reservation', function(el,id_reservation) {
        $.ceAjax('request', fn_url("reservation.delete"), {
            method: "POST",
            data: {id_reservation},
            callback(resp){
                if(resp.debug_info){
                    $(el).parent().remove();
                }
                else{
                    console.log('false');

                }

            }
        });
    });
    }(Tygh, Tygh.$));

