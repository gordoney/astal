<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>
<div class="newsflash<?php echo $moduleclass_sfx; ?> mod_articles_news">
	<div class="module_name"><a href="/novosti"><?php echo JText :: _('MOD_ARTICLES_NEWS_ALL'); ?></a></div>
	<div class="container-fluid">
		<div class="row">
			<?php foreach ($list as $item) : ?>
				<?php require JModuleHelper::getLayoutPath('mod_articles_news', '_item'); ?>
			<?php endforeach; ?>
		</div>
	</div>
</div>
