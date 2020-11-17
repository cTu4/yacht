(function(_, $) {


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

    $(document).ready(function() {
        $('.owl-carousel-search').each(function (slider){
            $(this).owlCarousel({
                loop:true,
                items: 1,
                nav:false,
                mouseDrag: true,
                dots:true
            });
        });
    });





}(Tygh, Tygh.$));