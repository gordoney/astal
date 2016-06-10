<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_articles_news
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

$item_heading = $params->get('item_heading', 'h4');
?>
<div class="single_news col-xs-24 col-sm-24 col-md-8 col-lg-8">

	<div class="date">
		<?php echo JHtml::_('date', $item->publish_up, JText::_('DATE_FORMAT_LC_GR')); ?>
	</div>
	
	<?php if ($params->get('item_title')) : ?>
	
		<?php $stringLimit = 80;
		$symbolsPattern = array('.',',','!','?',':',';','/');
		$originalString = strip_tags($item->title);
		$originalLength = strlen($item->title);
					   
		if ($originalLength > $stringLimit) {
			$processedString = mb_substr($originalString, 0, $stringLimit, 'UTF-8'); 
			$numb = mb_strrpos($processedString, ' ', 'UTF-8');
			$resultString = mb_substr($processedString, 0, $numb, 'UTF-8');
			$resultLength = strlen($resultString);
			if (in_array($resultString[$resultLength-1],   $symbolsPattern)) {
				$resultString[$resultLength-1] = '.';
				$resultString .= '..';
			} else {
				$resultString .= '...';
			}
		} else {
			$resultString = $originalString;
		}
		?>	

		<<?php echo $item_heading; ?> class="newsflash-title<?php echo $params->get('moduleclass_sfx'); ?>">
		<?php if ($params->get('link_titles') && $item->link != '') : ?>
			<a href="<?php echo $item->link; ?>">
				<?php echo $resultString; ?>
			</a>
		<?php else : ?>
			<?php echo $resultString; ?>
		<?php endif; ?>
		</<?php echo $item_heading; ?>>

	<?php endif; ?>

	<?php if (!$params->get('intro_only')) : ?>
		<?php echo $item->afterDisplayTitle; ?>
	<?php endif; ?>

	<?php echo $item->beforeDisplayContent; ?>

	<?php echo $item->introtext; ?>

	<?php if (isset($item->link) && $item->readmore != 0 && $params->get('readmore')) : ?>
		<?php echo '<a class="readmore" href="' . $item->link . '">' . $item->linkText . '</a>'; ?>
	<?php endif; ?>
</div>