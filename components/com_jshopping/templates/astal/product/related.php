<?php 
/**
* @version      4.9.1 13.08.2013
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');

$in_row = $this->config->product_count_related_in_row;
?>
<?php if (count($this->related_prod)){?>    
    <div class="jshop_list_product">
        <div class = "jshop list_related">
			<div class="container-fluid">
				<div class="row">
					<?php foreach($this->related_prod as $k=>$product) : ?>        

						<div class="col-xs-24 col-sm-24 col-md-12 col-lg-12 block_product">
							<div class="jshop_related">
								<?php include(dirname(__FILE__)."/../".$this->folder_list_products."/".$product->template_block_product);?>
							</div>
						</div>
						
					<?php endforeach; ?>
				</div>
			</div>
        </div>
    </div> 
<?php }?>