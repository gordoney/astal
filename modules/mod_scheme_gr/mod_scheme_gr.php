<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_footer
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die; 

?>

<div class="mod_scheme_gr">
	<div class="elem other">
		<img src="/modules/mod_scheme_gr/images/other.png" alt="">
	</div>
	<div class="elem lotok-all">
		<img src="/modules/mod_scheme_gr/images/lotok-all.png" alt="">
		<a href="<?php $params->get('url-lotok-all'); ?>" class="name"><?php echo JText :: _('MOD_SCHEME_GR_LOTOK_ALL'); ?></a>
		<div class="desc"><?php echo $params->get('desc-lotok-all'); ?></div>
	</div>
	<div class="elem lotok">
		<img src="/modules/mod_scheme_gr/images/lotok.png" alt="">
		<a href="<?php $params->get('url-lotok'); ?>" class="name"><?php echo JText :: _('MOD_SCHEME_GR_LOTOK'); ?></a>
		<div class="desc"><?php echo $params->get('desc-lotok'); ?></div>
	</div>
	<div class="elem cell-sort">
		<img src="/modules/mod_scheme_gr/images/cell-sort.png" alt="">
		<a href="<?php $params->get('url-cell-sort'); ?>" class="name"><?php echo JText :: _('MOD_SCHEME_GR_CELL_SORT'); ?></a>
		<div class="desc"><?php echo $params->get('desc-cell-sort'); ?></div>
	</div>
	<div class="elem cell-trap">
		<img src="/modules/mod_scheme_gr/images/cell-trap.png" alt="">
		<a href="<?php $params->get('url-cell-trap'); ?>" class="name"><?php echo JText :: _('MOD_SCHEME_GR_CELL_TRAP'); ?></a>
		<div class="desc"><?php echo $params->get('desc-cell-trap'); ?></div>
	</div>
	<div class="elem trap">
		<img src="/modules/mod_scheme_gr/images/trap.png" alt="">
		<a href="<?php $params->get('url-trap'); ?>" class="name"><?php echo JText :: _('MOD_SCHEME_GR_TRAP'); ?></a>
		<div class="desc"><?php echo $params->get('desc-trap'); ?></div>
	</div>
</div>
