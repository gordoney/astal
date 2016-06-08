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
		<?php foreach ($contacts as $contact) { ?>
			<?php if ($contact['contact_type'] == 'landline') { ?>
				<div class="contact col-xs-24 col-sm-24 col-md-8 col-lg-8">
					<?php echo $contact['contact_text']; ?><i class="icon-phone-call"></i>
				</div>
			<?php } else if ($contact['contact_type'] == 'address') { ?>
				<div class="contact address col-xs-24 col-sm-24 col-md-24 col-lg-24">
					<?php echo $contact['contact_text']; ?><i class="icon-placeholder"></i>
				</div>			
			<?php } else { ?>
				<div class="contact col-xs-24 col-sm-24 col-md-8 col-lg-8">
					<?php echo $contact['contact_text']; ?><img src="<?php echo $contact['contact_img']; ?>" alt="">
				</div>					
			<?php } ?>
		<? } ?>
	</div>
	</div>
</div>