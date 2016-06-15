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
	
	function parallax_handler() {
		if (jQuery('body').hasClass('page_catalog')) {
			var heightBackground = jQuery('.mod_background_gr').height();
			var heightMenuToTop = jQuery('.mod_second_menu_gr').position().top;
			parallaxMenu ();
			
			jQuery(window).scroll(function () {
				parallaxMenu ();
			});	
			
			function parallaxMenu () {
				var heightToTop = jQuery(window).scrollTop();
				if (heightToTop < 280) {
					jQuery('.mod_background_gr').css('height', heightBackground - heightToTop/1.3);
					jQuery('.mod_second_menu_gr').css('top', heightMenuToTop - heightToTop/2);
				} else {
					jQuery('.mod_background_gr').css('height', heightBackground - 280/1.3);
					jQuery('.mod_second_menu_gr').css('top', heightMenuToTop - 280/2);				
				}				
			}
		}
	}
	
	function modal_overlay_fix() {
		jQuery('.modal-dialog').parent().on('show.bs.modal', function(e){ 
			jQuery(e.relatedTarget.attributes['data-target'].value).appendTo('body'); 
		})	
	}
	
	function scheme_handler() {
		jQuery('.mod_scheme_gr .name').mouseenter(function() {
			var active = jQuery(this).closest('.elem');
			jQuery('.elem').not(active).addClass('hover');
			active.addClass('hover_active');
		});
		jQuery('.mod_scheme_gr .name').mouseleave(function() {
			jQuery('.elem').removeClass('hover');
			jQuery('.elem').removeClass('hover_active');
		});
	}
	
	jQuery(".colorbox_gallery").colorbox({rel:'colorbox_gallery'});
	
	slick_slider_handler();
	catalog_handler();
	parallax_handler();
	modal_overlay_fix();
	scheme_handler();
});