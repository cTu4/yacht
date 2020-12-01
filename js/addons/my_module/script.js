(function(_, $) {
    $.fn.hScroll = function( options )
    {
        function scroll( obj, e )
        {
            var evt = e.originalEvent;
            var scroll_px = 40;
            var direction = evt.detail ? evt.detail * scroll_px : evt.wheelDelta;
            if( direction > 0)
            {
                direction =  $(obj).scrollLeft() - scroll_px;
            }
            else
            {
                direction = $(obj).scrollLeft() + scroll_px;
            }
            $(obj).scrollLeft( direction );
            e.preventDefault();
        }

        $(this).width( $(this).find('div').width() );

        $(this).bind('DOMMouseScroll mousewheel', function( e )
        {
            scroll( this, e );
        });
    }

        var height = 0;
        $('.left_column .post').each(function (){
            height += $(this).height() + parseInt( $(this).css("marginBottom") );
        });
    $('.wrap_posts').css({
        height: height
    });
    $('.forecast .forecast-table').hScroll();
    var width_title = 0;
    $('.forecast .forecast-table .item').each(function (){
        width_title += $(this).width() + 30;
    });
    $('.forecast .forecast-table .title').width(width_title - 30);



    $('.post .like').on('click', function (e){
        var old_count_like = 0;
        if($(e.target).prop('nodeName') === 'path'){
            $(e.target).attr('fill', '#000');
            old_count_like = parseInt($(e.target).parent().next('span').html());
            $(e.target).parent().next('span').html(old_count_like + 1);
        }
        else{
            console.log($(e.target).find('span'));
            old_count_like = parseInt($(e.target).find('span').html());
            $(e.target).find('span').html(old_count_like +1);
            $(e.target).find('path').attr('fill', '#000');
        }
        $(e.target).closest('.like').removeClass('t-blue-a');
    });
        $('.heart').on('click',(e)=>{
            $(e.target).css({
                fill: '#ff033e',
                fillOpacity: 0.8,
                stroke:'none'
            });
        });


        $('.owl-carousel-1').owlCarousel({
            loop:true,
            items: 5,
            margin:10,
            nav:false,
            slideBy: 5,
            mouseDrag: false,
            onTranslated: callback_1
        });
        $('.next_1').on('click',function (){
            $('.owl-carousel-1').trigger('next.owl.carousel');
        });
        $('.prev_1').on('click',function (){
            $('.owl-carousel-1').trigger('prev.owl.carousel');
        });
        function callback_1(event) {
            $('.info_slider_1').html(`${event.page.index+1} of ${event.page.count} pages`);
        }



        $('.owl-carousel-2').owlCarousel({
            loop:true,
            items: 3,
            margin:10,
            nav:false,
            slideBy: 3,
            mouseDrag: false,
            onTranslated: callback_2
        });
        $('.next_2').on('click',function (){
            $('.owl-carousel-2').trigger('next.owl.carousel');
        });
        $('.prev_2').on('click',function (){
            $('.owl-carousel-2').trigger('prev.owl.carousel');
        });
        function callback_2(event) {
            $('.info_slider_2').html(`${event.page.index+1} of ${event.page.count} pages`);
        }



    $('.owl-carousel-3').owlCarousel({
        loop:true,
        items: 4,
        margin:10,
        nav:false,
        slideBy: 4,
        mouseDrag: false,
        onTranslated: callback_3
    });
    $('.next_3').on('click',function (){
        $('.owl-carousel-3').trigger('next.owl.carousel');
    });
    $('.prev_3').on('click',function (){
        $('.owl-carousel-3').trigger('prev.owl.carousel');
    });
    function callback_3(event) {
        $('.info_slider_3').html(`${event.page.index+1} of ${event.page.count} pages`);
    }

    $('.owl-carousel-4').owlCarousel({
        loop:true,
        items: 2,
        margin:10,
        nav:false,
        slideBy: 2,
        mouseDrag: false,
        onTranslated: callback_4
    });
    $('.next_4').on('click',function (){
        $('.owl-carousel-4').trigger('next.owl.carousel');
    });
    $('.prev_4').on('click',function (){
        $('.owl-carousel-4').trigger('prev.owl.carousel');
    });
    function callback_4(event) {
        $('.info_slider_4').html(`${event.page.index+1} of ${event.page.count} pages`);
    }


    $('.owl-carousel-5').owlCarousel({
        loop:true,
        items: 4,
        margin:10,
        nav:false,
        slideBy: 4,
        mouseDrag: false,
        onTranslated: callback_5
    });
    $('.next_5').on('click',function (){
        $('.owl-carousel-5').trigger('next.owl.carousel');
    });
    $('.prev_5').on('click',function (){
        $('.owl-carousel-5').trigger('prev.owl.carousel');
    });
    function callback_5(event) {
        $('.info_slider_5').html(`${event.page.index+1} of ${event.page.count} pages`);
    }

    $('.owl-carousel-6').owlCarousel({
        loop:true,
        items: 4,
        margin:10,
        nav:false,
        slideBy: 4,
        mouseDrag: false,
        onTranslated: callback_6
    });
    $('.next_6').on('click',function (){
        $('.owl-carousel-6').trigger('next.owl.carousel');
    });
    $('.prev_6').on('click',function (){
        $('.owl-carousel-6').trigger('prev.owl.carousel');
    });
    function callback_6(event) {
        $('.info_slider_6').html(`${event.page.index+1} of ${event.page.count} pages`);
    }
    $('.slider-collections').slick({
        infinite: false,
        slidesToShow: 3,
        slidesToScroll: 3,
        arrows: false,
        dots: false
    });

    // console.log($(".slider-collections").slick("getSlick"));
    $('.prev_collections').on('click',function (){
        $('.slider-collections').slick('slickPrev');
    });
    $('.next_collections').on('click',function (){
        $('.slider-collections').slick('slickNext');
    });

    $('.slider-similar').slick({
        infinite: false,
        slidesToShow: 4,
        slidesToScroll: 4,
        arrows: false,
        dots: false
    });
    $('.prev_similar').on('click',function (){
        $('.slider-similar').slick('slickPrev');
    });
    $('.next_similar').on('click',function (){
        $('.slider-similar').slick('slickNext');
    });
}(Tygh, Tygh.$));



(function(_, $) {
    $.ceEvent('on', 'ce.commoninit', function (context) {

        $('.owl-carousel-search').each(function (slider){
            $(this).owlCarousel({
                loop:false,
                items: 1,
                nav:false,
                mouseDrag: true,
                dots:true,
                lazyLoad: true
            });
        });
    });
})(Tygh, Tygh.$);