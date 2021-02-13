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
    $('.slider-field').on('init reInit afterChange', function(event, slick, currentSlide, nextSlide){
        info_slider(event, slick, currentSlide, nextSlide);
    });
    $('.prev').on('click',function (){
        slide(this,'prev');
    });
    $('.next').on('click',function (){
        slide(this,'next')
    });
    function info_slider(event, slick, currentSlide, nextSlide){
        let item_per_page = slick.options.slidesToShow;
        var i = Math.floor((currentSlide ? currentSlide : 0)/item_per_page)+ 1;
        $(event.target).prev().find('.info_slider').text(i + ' of ' + Math.ceil((slick.slideCount)/item_per_page) + " pages");
        $(event.target).find('.item').css({margin:0});
    }
    function slide(el,direction){
        if(direction === "next"){
            $(el).closest(".title_slider").next().slick('slickNext');
        }
        else{
            $(el).closest(".title_slider").next().slick('slickPrev');
        }
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


    //     $('.owl-carousel-1').owlCarousel({
    //         loop:true,
    //         items: 5,
    //         margin:10,
    //         nav:false,
    //         slideBy: 5,
    //         mouseDrag: false,
    //         onTranslated: callback_1
    //     });
    //     $('.next_1').on('click',function (){
    //         $('.owl-carousel-1').trigger('next.owl.carousel');
    //     });
    //     $('.prev_1').on('click',function (){
    //         $('.owl-carousel-1').trigger('prev.owl.carousel');
    //     });
    //     function callback_1(event) {
    //         $('.info_slider_1').html(`${event.page.index+1} of ${event.page.count} pages`);
    //     }
    //
    //
    //
    //     $('.owl-carousel-2').owlCarousel({
    //         loop:true,
    //         items: 3,
    //         margin:10,
    //         nav:false,
    //         slideBy: 3,
    //         mouseDrag: false,
    //         onTranslated: callback_2
    //     });
    //     $('.next_2').on('click',function (){
    //         $('.owl-carousel-2').trigger('next.owl.carousel');
    //     });
    //     $('.prev_2').on('click',function (){
    //         $('.owl-carousel-2').trigger('prev.owl.carousel');
    //     });
    //     function callback_2(event) {
    //         $('.info_slider_2').html(`${event.page.index+1} of ${event.page.count} pages`);
    //     }
    //
    //
    //
    // $('.owl-carousel-3').owlCarousel({
    //     loop:true,
    //     items: 4,
    //     margin:10,
    //     nav:false,
    //     slideBy: 4,
    //     mouseDrag: false,
    //     onTranslated: callback_3
    // });
    // $('.next_3').on('click',function (){
    //     $('.owl-carousel-3').trigger('next.owl.carousel');
    // });
    // $('.prev_3').on('click',function (){
    //     $('.owl-carousel-3').trigger('prev.owl.carousel');
    // });
    // function callback_3(event) {
    //     $('.info_slider_3').html(`${event.page.index+1} of ${event.page.count} pages`);
    // }
    //
    // $('.owl-carousel-4').owlCarousel({
    //     loop:true,
    //     items: 2,
    //     margin:10,
    //     nav:false,
    //     slideBy: 2,
    //     mouseDrag: false,
    //     onTranslated: callback_4
    // });
    // $('.next_4').on('click',function (){
    //     $('.owl-carousel-4').trigger('next.owl.carousel');
    // });
    // $('.prev_4').on('click',function (){
    //     $('.owl-carousel-4').trigger('prev.owl.carousel');
    // });
    // function callback_4(event) {
    //     $('.info_slider_4').html(`${event.page.index+1} of ${event.page.count} pages`);
    // }


    // $('.owl-carousel-5').owlCarousel({
    //     loop:true,
    //     items: 4,
    //     margin:10,
    //     nav:false,
    //     slideBy: 4,
    //     mouseDrag: false,
    //     onTranslated: callback_5
    // });
    // $('.next_5').on('click',function (){
    //     $('.owl-carousel-5').trigger('next.owl.carousel');
    // });
    // $('.prev_5').on('click',function (){
    //     $('.owl-carousel-5').trigger('prev.owl.carousel');
    // });
    // function callback_5(event) {
    //     $('.info_slider_5').html(`${event.page.index+1} of ${event.page.count} pages`);
    // }

    // $('.owl-carousel-6').owlCarousel({
    //     loop:true,
    //     items: 4,
    //     margin:10,
    //     nav:false,
    //     slideBy: 4,
    //     mouseDrag: false,
    //     onTranslated: callback_6
    // });
    // $('.next_6').on('click',function (){
    //     $('.owl-carousel-6').trigger('next.owl.carousel');
    // });
    // $('.prev_6').on('click',function (){
    //     $('.owl-carousel-6').trigger('prev.owl.carousel');
    // });
    // function callback_6(event) {
    //     $('.info_slider_6').html(`${event.page.index+1} of ${event.page.count} pages`);
    // }


    $('.slider-collections').on('init reInit afterChange', function(event, slick, currentSlide, nextSlide){
        info_slider(event, slick, currentSlide, nextSlide);
    });
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


    var sliders = $('.slider-lux .item').length ;
    $('.slider-checked').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 4,
        arrows: false,
        dots: false,
        swipe: false
    });
    $('.slider-destination').slick({
        infinite: false,
        slidesToShow: 5,
        slidesToScroll: 5,
        arrows: false,
        dots: false
    });
    $('.slider-challenges').slick({
        infinite: false,
        slidesToShow: 2,
        slidesToScroll: 2,
        arrows: false,
        dots: false
    });
    $(document).ready(function() {
        if($('#map').length){
            ymaps.ready(init);
        }

    });
    function init(){
        var myMap,
            coords;
        ymaps.geocode($('#location').text()).then(function (res) {
            var firstGeoObject = res.geoObjects.get(0);
            coords = firstGeoObject.geometry.getCoordinates();
            myMap = new ymaps.Map ("map", {
                center: [coords[0], coords[1]],
                zoom: 7,
                controls: []
            });
            myMap.geoObjects.add(firstGeoObject);
        });

        // myPlacemark = new ymaps.Placemark([55.931161, 37.848649], {
        //         iconContent: "$ 2450  ",
        //         balloonContent: $('#product').text()
        //     },
        //     {
        //         preset: 'islands#blueStretchyIcon',
        //         iconColor: '#1D85D1'
        //     });

        // myMap.geoObjects.add(myPlacemark);

        // $.ajax({
        //     url: "https://geocode-maps.yandex.ru/1.x/?apikey=b32251bf-b0a1-4013-a53e-03c1d438785f&format=json&geocode=37.841495 55.937906&results=1"
        // }).done(function(resp) {
        //     console.log(resp);
        // });

    }

    $('#diff_location').on('click',function (){
       $('#location_toggle').toggle(600);
    });

//     // Create the script tag, set the appropriate attributes
//     var script = _.doc.createElement('script');
//     script.src = 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAx0mMExcObDb5oqalgIAyiTuNXMrr3-wU&callback=initMap';
//     script.defer = true;
//
// // Attach your callback function to the `window` object
//     window.initMap = function() {
//          let map = new google.maps.Map(_.doc.getElementById("kek"), {
//             center: { lat: -34.397, lng: 150.644 },
//             zoom: 8,
//         });
//     };
//
// // Append the 'script' element to 'head'
//     _.doc.head.appendChild(script);

}(Tygh, Tygh.$));



(function(_, $) {
    $(".search .arrow-bottom").on("click",function (e){
        $(".search .arrow-bottom").toggleClass("active");
        $(".search > span, .search form, .search_toggle").toggle(300);
        $(".search .search_buttons").toggleClass("active");

    });


    $.ceEvent('on', 'ce.commoninit', function (context) {

        $('.slider-search').each(function (slider){
            $(this).slick({
                infinite: false,
                slidesToShow: 1,
                arrows: false,
                adaptiveHeight: true,
                dots: true,
                customPaging : function(slider, i) {
                    return '<div></div>';
                },
            });
        });
    });
})(Tygh, Tygh.$);