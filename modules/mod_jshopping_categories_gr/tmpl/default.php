<div class="mod_jshopping_categories_gr mainpage_category"> 
	<div class="shophead"><?php echo JText :: _('MOD_JSHOPPING_CATEGORIES_GR_HEAD'); ?></div>
    <?php if ($categories) : ?>
    
		<div class="container-fluid">
			<div class="row">
				<?php foreach ($categories as $key => $category) : ?>
				
					<?php if ($key == 0) { ?>
						<div class = "col-xs-24 col-sm-24 col-md-24 col-lg-18 jshop_categ category">
					<?php } else if ($key == 8) { ?>
						<div class = "col-xs-24 col-sm-24 col-md-12 col-lg-12 jshop_categ category">
					<?php } else { ?>
						<div class = "col-xs-24 col-sm-24 col-md-12 col-lg-6 jshop_categ category">
					<?php } ?>
						<div class="wrapper">
							
							<?php if ($category['child']) { ?>
								<div class="category_block">
							<?php } else { ?>
								<a href="<?php print $category['category_link']?>" class="category_block">
							<?php } ?>
							
								<div class="container-fluid">
									<div class="row">
										<?php if ($key == 0) { ?>
											<div class="hidden-xs hidden-sm hidden-md col-lg-8 category_name first">
												<?php print $category['name']?>
											</div>
											<div class = "hidden-xs hidden-sm hidden-md col-lg-16 image first">
												<img class = "jshop_img" src = "<?php echo $category['category_image']; ?>" alt="" title="<?php print htmlspecialchars($category['name']);?>" />
											</div>
											
											<div class = "col-xs-24 col-sm-24 col-md-24 hidden-lg image first">
												<img class = "jshop_img" src = "<?php echo $category['category_image']; ?>" alt="" title="<?php print htmlspecialchars($category['name']);?>" />
											</div>
											<div class="col-xs-24 col-sm-24 col-md-24 hidden-lg category_name first">
												<?php print $category['name']?>
											</div>										
										<?php } else if ($key == 8) { ?>
											<div class="hidden-xs hidden-sm hidden-md col-lg-12 category_name category_name last">
												<?php print $category['name']?>
											</div>
											<div class = "hidden-xs hidden-sm hidden-md col-lg-12 image last">
												<img class = "jshop_img" src = "<?php echo $category['category_image']; ?>" alt="" title="<?php print htmlspecialchars($category['name']);?>" />
											</div>
											
											<div class = "col-xs-24 col-sm-24 col-md-24 hidden-lg image last">
												<img class = "jshop_img" src = "<?php echo $category['category_image']; ?>" alt="" title="<?php print htmlspecialchars($category['name']);?>" />
											</div>	
											<div class="col-xs-24 col-sm-24 col-md-24 hidden-lg category_name last">
												<?php print $category['name']?>
											</div>										
										<?php } else { ?>
											<div class = "col-xs-24 col-sm-24 col-md-24 col-lg-24 image">
												<img class = "jshop_img" src = "<?php echo $category['category_image']; ?>" alt="" title="<?php print htmlspecialchars($category['name']);?>" />
											</div>
											<div class="col-xs-24 col-sm-24 col-md-24 col-lg-24 category_name">
												<?php print $category['name']?>
											</div>
											
										<?php } ?>
									</div>
								</div>
								
							<?php if ($category['child']) { ?>
								</div>
							<?php } else { ?>
								</a>
							<?php } ?>
							
							<?php if ($category['child']) { ?>
								<div class="sub_category">
									<div class="parent_category_name">
										<a href="<?php echo $category['category_link']; ?>"><?php print $category['name']?></a>
									</div>	
									<?php foreach ($category['child'] as $subCategory) { ?>
										<div class="sub_category_name">
											<a href="<?php echo $subCategory['category_link']; ?>"><?php echo $subCategory['name']; ?></a>
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