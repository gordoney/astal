<?php 
/**
* @version      4.10.5 13.08.2013
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');

print $this->_tmp_maincategory_html_start;
?>
<?php if ($this->params->get('show_page_heading') && $this->params->get('page_heading')){?>
<div class="shophead<?php print $this->params->get('pageclass_sfx');?>">
    <h1><?php print $this->params->get('page_heading')?></h1>
</div>
<?php }?>

<div class="jshop mainpage_category" id="comjshop">
    <div class="category_description">
        <?php print $this->category->description?>
    </div>

    <div>
    <?php if (count($this->categories)) : ?>
    
		<div class="container-fluid">
			<div class="row">
				<?php foreach ($this->categories as $key => $category) : ?>
				
					<?php if ($key == 0) { ?>
						<div class = "col-xs-24 col-sm-24 col-md-24 col-lg-18 jshop_categ category">
					<?php } else if ($key == 8) { ?>
						<div class = "col-xs-24 col-sm-24 col-md-12 col-lg-12 jshop_categ category">
					<?php } else { ?>
						<div class = "col-xs-24 col-sm-24 col-md-12 col-lg-6 jshop_categ category">
					<?php } ?>
						<div class="wrapper">
						
							<?php $categoryTable = JTable::getInstance('category', 'jshop'); 
							$subCategories = $categoryTable->getSubCategories($category->category_id); ?>
							
							<?php if ($subCategories) { ?>
								<div class="category_block">
							<?php } else { ?>
								<a href="<?php print $category->category_link?>" class="category_block">
							<?php } ?>
							
								<div class="container-fluid">
									<div class="row">
										<?php if ($key == 0) { ?>
											<div class="hidden-xs hidden-sm hidden-md col-lg-8 category_name first">
												<?php print $category->name?>
											</div>
											<div class = "hidden-xs hidden-sm hidden-md col-lg-16 image first">
												<img class = "jshop_img" src = "<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" />
											</div>
											
											<div class = "col-xs-24 col-sm-24 col-md-24 hidden-lg image first">
												<img class = "jshop_img" src = "<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" />
											</div>
											<div class="col-xs-24 col-sm-24 col-md-24 hidden-lg category_name first">
												<?php print $category->name?>
											</div>										
										<?php } else if ($key == 8) { ?>
											<div class="hidden-xs hidden-sm hidden-md col-lg-12 category_name category_name last">
												<?php print $category->name?>
											</div>
											<div class = "hidden-xs hidden-sm hidden-md col-lg-12 image last">
												<img class = "jshop_img" src = "<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" />
											</div>
											
											<div class = "col-xs-24 col-sm-24 col-md-24 hidden-lg image last">
												<img class = "jshop_img" src = "<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" />
											</div>	
											<div class="col-xs-24 col-sm-24 col-md-24 hidden-lg category_name last">
												<?php print $category->name?>
											</div>										
										<?php } else { ?>
											<div class = "col-xs-24 col-sm-24 col-md-24 col-lg-24 image">
												<img class = "jshop_img" src = "<?php print $this->image_category_path;?>/<?php if ($category->category_image) print $category->category_image; else print $this->noimage;?>" alt="<?php print htmlspecialchars($category->name);?>" title="<?php print htmlspecialchars($category->name);?>" />
											</div>
											<div class="col-xs-24 col-sm-24 col-md-24 col-lg-24 category_name">
												<?php print $category->name?>
											</div>
											
										<?php } ?>
									</div>
								</div>
								
							<?php if ($subCategories) { ?>
								</div>
							<?php } else { ?>
								</a>
							<?php } ?>
							
							<?php if ($subCategories) { ?>
								<div class="sub_category">
									<div class="parent_category_name">
										<?php print $category->name?>
									</div>	
									<?php foreach ($subCategories as $subCategory) { ?>
										<div class="sub_category_name">
											<a href="<?php echo $subCategory->category_link; ?>"><?php echo $subCategory->name; ?></a>
										</div>
									<?php } ?>					
								</div>
							<?php } ?>
						</div>
					</div>
					
				<?php endforeach;?>
			</div>
		</div>
        
    <?php endif; ?>
    </div>
    
    <?php print $this->_tmp_maincategory_html_end;?>
</div>