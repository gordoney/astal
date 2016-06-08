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
<div class="mod_info_gr">
	<div class="container">
		<div class="row">
			<div class="block1 col-xs-24 col-sm-24 col-md-12 col-lg-12">
				<div class="name"><?php echo $params->get('name1'); ?></div>
				<div class="text"><?php echo $params->get('text1'); ?></div>
			</div>
			<div class="block2 col-xs-24 col-sm-24 col-md-offset-1 col-md-11 col-lg-offset-1 col-lg-11">
				<div class="inner">
					<div class="name"><?php echo $params->get('name2'); ?></div>
					<div class="text"><?php echo $params->get('text2'); ?></div>
					<i class="icon-handshake"></i>
				</div>
			</div>
		</div>
	</div>
</div>