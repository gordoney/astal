<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_popular
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>
<div class="mod_contacts_gr">
	<div class="container-fluid">
	<div class="row">
		<?php foreach ($contacts as $key=>$contact) { ?>
			<?php if ($contact['contact_type'] == 'landline') { ?>
				<div class="contact col-xs-24 col-sm-24 col-md-24 col-lg-8">
					<?php echo $contact['contact_text']; ?><i class="icon-phone-call"></i>
				</div>
			<?php } else if ($contact['contact_type'] == 'address') { ?>
				<div class="contact address col-xs-24 col-sm-24 col-md-24 col-lg-24">
					<?php if ($contact['mapx'] && $contact['mapy'] && $contact['zoom']) { ?><span class="button_map" data-toggle="modal" data-target="#modal_form<?php echo $module->id; ?><?php echo $key; ?>"><?php echo JText::_('MOD_CONTACTS_GR_MAP').' '; ?></span><?php } ?><?php echo $contact['contact_text']; ?><i class="icon-placeholder"></i>
				</div>			
			<?php } else { ?>
				<div class="contact col-xs-24 col-sm-24 col-md-8 col-lg-8">
					<?php echo $contact['contact_text']; ?><img src="<?php echo $contact['contact_img']; ?>" alt="">
				</div>					
			<?php } ?>
			<?php if ($contact['mapx'] && $contact['mapy'] && $contact['zoom']) { ?>
				<div class="modal fade modal_map" id="modal_form<?php echo $module->id; ?><?php echo $key; ?>" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">	
							<div class="map">
								<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
								<script type="text/javascript">			
									ymaps.ready(init);
									var mapPageGr<?php echo $key; ?>;					
												
									function init(){ 
													
										mapPageGr<?php echo $key; ?> = new ymaps.Map("page_map_gr<?php echo $key; ?>", {
											center: [<?php echo $contact['mapx']; ?>,<?php echo $contact['mapy']; ?>],
											zoom: <?php echo $contact['zoom']; ?>
										}); 
											
										var mapPlacemark<?php echo $key; ?> = new ymaps.Placemark([<?php echo $contact['mapx']; ?>,<?php echo $contact['mapy']; ?>], {}, {
											iconLayout: 'default#image',
											iconImageSize: [30, 35],
											iconImageOffset: [-22, -60]
										});		
														
										mapPageGr<?php echo $key; ?>.geoObjects.add(mapPlacemark<?php echo $key; ?>);
									}
								</script>
								<div id="page_map_gr<?php echo $key; ?>" class="map_window"></div>				
							</div>	
						</div>	
					</div>
				</div>
			<?php } ?>
		<? } ?>
	</div>
	</div>
</div>