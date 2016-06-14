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
<div class="mod_second_menu_gr">
	<div class="container-fluid">
		<div class="row">
			<?php foreach ($menu as $key=>$item) { ?>
				<?php if ($key==0) { ?>
					<div class="menu_col hidden-xs hidden-sm col-md-4 col-lg-4">
						<div class="menu_item"><a href="<?php echo $item['url']; ?>"><?php echo $item['text']; ?></a></div>
					</div>
				<?php } else if ($key%2!=0) { ?>
					<div class="menu_col hidden-xs hidden-sm col-md-5 col-lg-5">
						<div class="menu_item"><a href="<?php echo $item['url']; ?>"><?php echo $item['text']; ?></a></div>
				<?php } else if ($key%2==0) { ?>
						<div class="menu_item"><a href="<?php echo $item['url']; ?>"><?php echo $item['text']; ?></a></div>
					</div>
				<?php } ?>
			<? } ?>
		</div>
	</div>
</div>