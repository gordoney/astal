<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_popular
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
$qtyFieldsInFirstBlock = round(count($fields)/2);
?>

<div class="mod_form_gr">
	<?php if ($params->get('modal_on')) { ?>

		<div class="modal_form_btn<?php echo ' '.$params->get('modal_btn_class'); ?>" data-toggle="modal" data-target="#modal_form<?php echo $module->id; ?>">
			<span><?php echo $params->get('modal_btn_text'); ?></span>
		</div>

		<div class="modal fade" id="modal_form<?php echo $module->id; ?>" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
	<?php } ?>

	<form id="form_back_<?php echo $module->id; ?>" name="form" method="post" enctype="multipart/form-data" class="clearfix">
		<div class="head">
			<span><?php echo $params->get('head'); ?></span>
		</div>
		<div class="container-fluid">
			<div class="row">
				<?php for ($i=0; $i < count($fields); $i++) { ?>
					<?php if ($fields[$i]['type'] != 'separator') { ?>
						<?php if ($i==$qtyFieldsInFirstBlock || $i==0) { ?>
							<div class="fields col-xs-24 col-sm-24 col-md-24 col-lg-9">
						<?php } ?>
							<?php if ($fields[$i]['title']) { ?>
								<div class="text">
									<?php echo $fields[$i]['title']; ?> <span><?php if ($fields[$i]['required']) { echo '*'; } ?></span>
								</div>							
							<?php } ?>
							<div class="field">
								<?php switch ($fields[$i]['type']) {
									case 'text': ?>
										<input class="input" type="text" name="field<?php echo $i; ?>" placeholder="<?php echo $fields[$i]['placeholder']; ?><?php if ($fields[$i]['required']) { echo '*'; } ?>">
										<?php break;

									case 'textarea': ?>
										<textarea class="input" name="field<?php echo $i; ?>" placeholder="<?php echo $fields[$i]['placeholder']; ?><?php if ($fields[$i]['required']) { echo '*'; } ?>"></textarea>
										<?php break;							
								} ?>
							</div>
						<?php if ($i==$qtyFieldsInFirstBlock-1 || $i==count($fields)-1) { ?>
							</div>
						<?php } ?>
					<?php } else { ?>
						<div class="text-separator col-xs-24 col-sm-24 col-md-24 col-lg-24">
							<?php echo $fields[$i]['title']; ?> <span><?php if ($fields[$i]['required']) { echo '*'; } ?></span>
						</div>					
					<?php } ?>
				<?php } ?>
				<div class="file col-xs-24 col-sm-24 col-md-24 col-lg-6">
					<?php if ($params->get('file_on')) { ?>
						<label><i class="icon-pdf-file-format-symbol"></i><input type="file" name="file"><span><?php echo $params->get('file_text'); ?></span></label>
					<?php } ?>	
					<div class="send">
						<button class="btn_form<?php echo $module->id; ?>" type="submit" name="submit"><i class="icon-envelope"></i><span><?php echo $params->get('button_text'); ?></span></button>		
					</div>
				</div>				
			</div>
		</div>

			<?php if ($params->get('captcha_on')) { ?>
				<div class="row">
					<div class="captcha">
						<div class="g-recaptcha" data-sitekey="<?php echo $params->get('captcha_key'); ?>"></div>
					</div>
				</div>			
			<?php } ?>					
		
		<input class="input capfield" type="text" name="capfield" style="height:1px; opacity:0; visibility: hidden;">
	</form>

	<?php if ($params->get('modal_on')) { ?>
		</div>
	  </div>
	</div>
	<?php } ?>	
	
	<!-- Modal -->
	<div class="modal fade answer" id="answer<?php echo $module->id; ?>" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close modal_close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<div><?php echo $params->get('thanks'); ?></div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		jQuery(document).ready(function() {
		
			jQuery('.license_full').click(function() {
				$('#license<?php echo $module->id; ?>').modal();
			});

			jQuery('.btn_form<?php echo $module->id; ?>').click(function(e){
				e.preventDefault();

				var id = "form_back_<?php echo $module->id; ?>";
				var form = document.getElementById(id);
				var formData = new FormData(form);
				
				var error = 0;
								
				<?php for ($i=0; $i < count($fields); $i++) { ?>
				
					<?php if ($fields[$i]['title']) { ?>
						formData.append("namefield<?php echo $i ;?>", "<?php echo $fields[$i]['title']; ?>");
					<?php } else if ($fields[$i]['placeholder']) { ?>
						formData.append("namefield<?php echo $i ;?>", "<?php echo $fields[$i]['placeholder']; ?>");
					<?php } ?>
				
					var field<?php echo $i ;?> = jQuery('[name=field<?php echo $i ;?>]', this.form).val();
					<?php if ($fields[$i]['required']) { ?>
						if (field<?php echo $i ;?> == '') {
							jQuery('[name=field<?php echo $i ;?>]', this.form).addClass('border_red');
							error = 1;
						} else {
							jQuery('[name=field<?php echo $i ;?>]', this.form).removeClass('border_red');		
						}
					<?php } ?>
				<?php } ?>	
				
				formData.append("mailSubject", "<?php echo $params->get('mail_head'); ?>");
				formData.append("recipient", "<?php echo $params->get('recipient'); ?>");
				formData.append("quantityFields", "<?php echo $quantityFields; ?>");
				formData.append("captchaSecretKey", "<?php echo $params->get('captcha_secret_key'); ?>");
				<?php if ($params->get('captcha_on')) { ?>
					formData.append("captcha", true);
				<?php } ?>

				var capfield = jQuery('[name=capfield]', this.form).val();	
				if (capfield != '') {
					error = 1;
				}				

				if (!error) {
					var xhr = new XMLHttpRequest();		
					xhr.open("POST", "/modules/mod_form_gr/mailer.php",true);
					xhr.onreadystatechange = function() {
						if(xhr.responseText == 'success'){
							$('#answer<?php echo $module->id; ?>').modal();
						}
					}				
					 xhr.send(formData); 	
				}
				
			})			
		});
	</script>	
</div>