<?php 
/**
* @version      4.8.0 13.08.2013
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');
?>
<?php if (count ($this->demofiles)){?>
	<?php foreach($this->demofiles as $k=>$demo){?>
		<?php if ($k == 0) { ?>
			<a class="download" target="_blank" href="<?php print $this->config->demo_product_live_path."/".$demo->demo;?>"><?php echo JText :: _('COM_JSHOPPING_PRODUCT_DOWNLOAD'); ?></a>
		<?php } ?>
	<?php } ?>
<?php } ?>