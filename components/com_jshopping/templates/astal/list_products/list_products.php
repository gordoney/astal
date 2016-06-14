<?php 
/**
* @version      4.9.1 13.08.2013
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');
?>
<div class="jshop list_product jshop_list_category" id="comjshop_list_product">
	<div class="container-fluid">
		<div class="row">
			<?php print $this->_tmp_list_products_html_start?>
			<?php foreach ($this->rows as $k=>$product) : ?>
				<div class = "col-xs-24 col-sm-8 col-md-6 col-lg-5 jshop_categ">
					<div class = "block_product category">
						<?php include(dirname(__FILE__)."/".$product->template_block_product);?>
					</div>
				</div>				
			<?php endforeach; ?>
			<?php print $this->_tmp_list_products_html_end;?>
		</div>
	</div>
</div>