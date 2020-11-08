(function(_, $) {
    $('.heart').on('click',(e)=>{
        $(e.target).css({
            fill: '#ff033e',
            fillOpacity: 0.8,
            stroke:'none'
        });
    });
    $('.owl-carousel').owlCarousel({
        loop:true,
        items: 5,
        margin:10,
        nav:false,
        slideBy: 5,
        mouseDrag: false,
        onTranslated: callback
    });
    function callback(event) {
        $('.info_slider').html(`${event.page.index+1} of ${event.page.count} pages`);
    }
    $('.next').on('click',function (){
        $('.owl-carousel').trigger('next.owl.carousel');
    });
    $('.prev').on('click',function (){
        $('.owl-carousel').trigger('prev.owl.carousel');
    });
}(Tygh, Tygh.$));