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
			<div class="contact col-xs-24 col-sm-24 col-md-8 col-lg-8">
				<?php echo $contact['contact_text']; ?><img src="<?php echo $contact['contact_img']; ?>" alt="">
			</div>
		<? } ?>
	</div>
	</div>
</div>