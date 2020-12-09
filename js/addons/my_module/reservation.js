(function(_, $) {
    console.log('aasf');
    $('#content_reservation .item .icon-plus').on('click',function (e) {
        let text = $(e.target).parent().prev().html();
        console.log(+ text.substring(0, text.length - 2) + 1);

    });
})(Tygh, Tygh.$);
