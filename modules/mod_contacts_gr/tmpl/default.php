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
	<?php foreach ($contacts as $contact) { ?>
		<div class="contact">
			<?php echo $contact['contact_text']; ?><img src="" alt="">
		</div>
	<? } ?>
</div>