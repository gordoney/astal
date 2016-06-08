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
<div class="mod_slider_gr">
	<div class="slick_slider">
		<?php foreach ($slides as $slide) { ?>
			<div class="item">
				<img src="<?php echo $slide['img']; ?>" alt="" style="width: 100%;">
				<?php if ($slide['text1'] || $slide['text2']) { ?>
					<div class="wrapper">
						<div class="container-fluid">
							<div class="text">
								<div><span><?php echo $slide['text1']; ?></span></div>
								<div><span><?php echo $slide['text2']; ?></span></div>
							</div>
						</div>
					</div>
				<?php } ?>
			</div>
		<?php } ?>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="dots">
				<?php for ($i=1; $i<=count($slides); $i++) { ?>
					<div class="dot<?php if ($i == 1) { echo ' active'; } ?>"></div>
				<?php } ?>		
			</div>
		</div>
	</div>
</div>