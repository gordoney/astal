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
<div class="mod_page_contacts_gr">
	<div class="info">
		<div class="container-fluid">
			<div class="row">
				<?php for ($i=1; $i<=$qtyBlocks; $i++) { ?>
					<div class="block col-xs-24 col-sm-24 col-md-24 col-lg-6">
						<div class="name">
							<?php if ($i==1) { ?>
								<i class="icon-placeholder"></i><?php echo JText :: _('MOD_PAGE_CONTACTS_ADDRESS'); ?>:
							<?php } else if ($i==2) { ?>
								<i class="icon-phone-call"></i><?php echo JText :: _('MOD_PAGE_CONTACTS_SELL'); ?>:
							<?php } ?>
						</div>
						<div class="content">
							<?php if ($i==2) { ?>
								<?php foreach ($contacts as $contact) { ?>
									<div class="contact">
										<?php if ($contact['contact_type'] == 'landline') { ?>
											<?php echo $contact['contact_text']; ?><i class="icon-phone-call"></i>
										<?php } else if ($contact['contact_type'] == 'address') { ?>
											<?php echo $contact['contact_text']; ?><i class="icon-placeholder"></i>		
										<?php } else { ?>
											<?php echo $contact['contact_text']; ?><img src="<?php echo $contact['contact_img']; ?>" alt="">			
										<?php } ?>
									</div>	
								<? } ?>								
							<?php } else { ?>
								<?php echo $params->get('block'.$i); ?>
							<?php } ?>						
						</div>
					</div>
				<? } ?>
			</div>
		</div>
	</div>
</div>