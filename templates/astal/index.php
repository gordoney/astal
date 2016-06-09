<?php 
/**
 * @package		Joomla.Site
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die; 

/* объявляем кастомные скрипты */
$document = JFactory::getDocument();
$document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js');
$document->addScript($this->baseurl.'/templates/'.$this->template.'/js/bootstrap.min.js');
$document->addScript($this->baseurl.'/templates/'.$this->template.'/js/slick.min.js');
$document->addScript($this->baseurl.'/templates/'.$this->template.'/js/custom.js');

/* объявляем кастомные стили */
$document->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/bootstrap.min.css');
$document->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/slick.css');
$document->addStyleSheet('https://fonts.googleapis.com/css?family=Open+Sans:400,700,300&subset=cyrillic');
//$document->addStyleSheet($this->baseurl.'/templates/'.$this->template.'/css/style.css');
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<head>
	<jdoc:include type="head" />
	<link rel="stylesheet/less" type="text/css" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/style.less" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/less.js/2.6.1/less.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div id="header" class="navbar " role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle menu_mobile_button" data-toggle="collapse" data-target="#bs-top-navbar-collapse-1">
					<span class="sr-only">Menu</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="header header_left col-xs-18 hidden-sm hidden-md hidden-lg">
					<jdoc:include type="modules" name="header_left" style="none" />
				</div>
			</div>
		 
			<div class="row">
				<div class="header header_left hidden-xs col-sm-8 col-md-5 col-lg-5">
					<jdoc:include type="modules" name="header_left" style="none" />
				</div>
				<div class="header header_center col-xs-24 col-sm-16 col-md-14 col-lg-14">
					<jdoc:include type="modules" name="header_center" style="none" />
				</div>
				<div class="header header_right col-xs-24 col-sm-24 col-md-5 col-lg-5">
					<jdoc:include type="modules" name="header_right" style="none" />
				</div>
			</div>
			<div class="wrapper">
				<div class="container-fluid">
					<div class="row">
						<div class="header header_bottom_left col-xs-24 col-sm-24 col-md-18 col-lg-18">
							<jdoc:include type="modules" name="header_bottom_left" style="none" />
						</div>
						<div class="header header_bottom_right col-xs-24 col-sm-24 col-md-6 col-lg-6">
							<jdoc:include type="modules" name="header_bottom_right" style="none" />
						</div>
					</div>	
				</div>
			</div>			
		</div>
	</div>		
	
	<?php if ($this->countModules('before_content_without_container')) { ?>
		<div id="before_content_without_container">
			<jdoc:include type="modules" name="before_content_without_container" style="xhtml" />
		</div>	
	<?php } ?>
	
	<?php if ($this->countModules('before_content')) { ?>
		<div id="before_content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-24 col-sm-24 col-md-24 col-lg-24">
						<jdoc:include type="modules" name="before_content" style="xhtml" />
					</div>
				</div>
			</div>
		</div>		
	<?php } ?>	
	
	<div id="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-24 col-sm-24 col-md-24 col-lg-24">
					<jdoc:include type="message" />
					<jdoc:include type="component" />
				</div>
			</div>
		</div>
	</div>		
	
	<?php if ($this->countModules('after_content_without_container')) { ?>
		<div id="after_content_without_container">
			<jdoc:include type="modules" name="after_content_without_container" style="xhtml" />
		</div>		
	<?php } ?>
	
	<?php if ($this->countModules('after_content')) { ?>
		<div id="after_content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xs-24 col-sm-24 col-md-24 col-lg-24">
						<jdoc:include type="modules" name="after_content" style="xhtml" />
					</div>
				</div>
			</div>
		</div>		
	<?php } ?>	
	
    <div id="footer">
        <div class="container-fluid">
			<div class="row">
				<div class="footer footer_top col-xs-24 col-sm-24 col-md-24 col-lg-24">
					<jdoc:include type="modules" name="footer_top" style="none" />
				</div>				
			</div>
			<div class="row">
				<div class="footer footer_left col-xs-24 col-sm-5 col-md-5 col-lg-5">
					<jdoc:include type="modules" name="footer_left" style="none" />
				</div>		
				<div class="footer footer_center col-xs-24 col-sm-7 col-md-7 col-lg-5">
					<jdoc:include type="modules" name="footer_center" style="none" />
				</div>	
				<div class="footer footer_right col-xs-24 col-sm-12 col-md-12 col-lg-14">
					<jdoc:include type="modules" name="footer_right" style="none" />
					<div class="medialine">
						<?php if(JURI::current() !== JURI::base()){?>
							<span>Разработка сайта - </span><a target="_blank" rel="nofollow" href="http://www.medialine.by/">Media Line</a>
						<?php } else { ?>	
							<span>Разработка сайта - </span><a target="_blank" href="http://www.medialine.by/">Media Line</a>
						<?php } ?>
					</div>
				</div>					
			</div>
		</div>	
	</div>	

</body>
</html>