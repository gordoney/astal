jQuery(document).ready(function() {

	function slick_slider_handler() {
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

	function catalog_handler() {	
		jQuery('.category_description .readmore').click(function () {
			if (jQuery(this).find('.readmore_hide').hasClass('hidden')) {
				var height = jQuery(this).siblings('.cut').find('.uncut').height();
				jQuery(this).siblings('.cut').find('.fog').addClass('hide_fog');
				jQuery(this).siblings('.cut').animate({height: height}, 400);
				jQuery(this).find('.readmore_hide').removeClass('hidden');
				jQuery(this).find('.readmore_show').addClass('hidden');
			} else if (jQuery(this).find('.readmore_show').hasClass('hidden')) {
				jQuery(this).siblings('.cut').find('.fog').removeClass('hide_fog');
				jQuery(this).siblings('.cut').animate({height: '200'}, 400);
				jQuery(this).find('.readmore_hide').addClass('hidden');
				jQuery(this).find('.readmore_show').removeClass('hidden');				
			}
		});
	}
	
	slick_slider_handler();
	catalog_handler();
});