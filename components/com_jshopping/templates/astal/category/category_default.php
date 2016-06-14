<?php 
/**
* @version      4.11.0 17.09.2015
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');

print $this->_tmp_category_html_start;
?>
<div class="jshop" id="comjshop">
    <h1 class="page_head"><?php print $this->category->name?></h1>

    <div class="jshop_list_category">

	<div class="container-fluid">
		<div class="row">
			<?php if ($this->category->category_image) { ?>
				<div class="category_img col-xs-24 col-sm-24 col-md-10 col-lg-10">
					<img src="<?php print $this->image_category_path;?>/<?php print $this->category->category_image; ?>" alt="">
				</div>			
				<div class="category_description col-xs-24 col-sm-24 col-md-offset-2 col-md-12 col-lg-offset-2 col-lg-12">
			<?php } else { ?>
				<div class="category_description col-xs-24 col-sm-24 col-md-24 col-lg-24">
			<?php } ?>
				<div class="cut">
					<div class="uncut"><?php print $this->category->description?></div>
					<div class="fog"></div>
				</div>
				<div class="readmore">
					<span class="readmore_show "><?php echo JText :: _('COM_JSHOPPING_LIST_READMORE'); ?></span>
					<span class="readmore_hide hidden"><?php echo JText :: _('COM_JSHOPPING_LIST_READMORE_HIDE'); ?></span>
				</div>
			</div>	
		</div>
	</div>
	
    <?php if (count($this->categories)) : ?>
        <div class = "jshop list_category">
			<div class="container-fluid">
				<div class="row">
					<?php foreach($this->categories as $k=>$category) : ?>
						
						<div class = "col-xs-24 col-sm-8 col-md-6 col-lg-5 jshop_categ">
							<a class="category" href = "<?php print $category->category_link;?>">
								<div class = "sblock2 image">
									<img class="jshop_img" src="<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name)?>" title="<?php print htmlspecialchars($category->name)?>" />
								</div>
								<div class = "sblock2">
									<div class="category_name">
										<?php print $category->name?>
									</div>
									<p class = "category_short_description">
										<?php print $category->short_description?>
									</p>                       
								</div>
							</a>
						</div>
						
					<?php endforeach; ?>
				</div>
            </div>
        </div>
    <?php endif; ?>
    </div>
	
	<?php print $this->_tmp_category_html_before_products;?>
        
    <?php include(dirname(__FILE__)."/products.php");?>
	
	<?php print $this->_tmp_category_html_end;?>
</div>