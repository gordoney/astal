jQuery(document).ready(function() {

	function slick_slider_init() {
		jQuery('.slick_slider').slick({  
			dots: false,
			arrows: false,
			speed: 300,
			slidesToShow: 1,
			fade: true,
		}); 
		
		jQuery('.mod_slider_gr .dot').click(function() {
			jQuery('.mod_slider_gr .dot').removeClass('active');
			jQuery(this).addClass('active');
			jQuery('.slick_slider').slick('slickGoTo', jQuery(this).index());
		});
		
		jQuery('.mod_slider_gr').on('beforeChange', function(event, slick, currentSlide, nextSlide){
			jQuery('.mod_slider_gr .dot').removeClass('active');
			jQuery('.mod_slider_gr .dot').eq(nextSlide).addClass('active');
		});		
	}		
	
	slick_slider_init();
});