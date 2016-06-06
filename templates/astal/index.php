<?php 
/**
 * @package		Joomla.Site
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die; 

/* сохраняем и отключаем Джумловские скрипты */
$joomlaScripts = $this->_scripts;
$joomlaScript = $this->_script['text/javascript'];
$this->_scripts = array();
$this->_script = array();

/* объявляем кастомные скрипты */
$document = JFactory::getDocument();
$document->addScript('http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js');
$document->addScript('//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js');
$customScripts = $this->_scripts;
$this->_scripts = array();
$this->_script = array();

/* объявляем кастомные стили */
$document->addStyleSheet('//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css');
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
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle menu_mobile_button" data-toggle="collapse" data-target="#bs-top-navbar-collapse-1">
					<span class="sr-only">Menu</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="header header_left col-xs-3 hidden-sm hidden-md hidden-lg">
					<jdoc:include type="modules" name="header_left" style="none" />
				</div>
				<div class="header header_right col-xs-9 hidden-sm hidden-md hidden-lg">
				</div>
			</div>
		 
			<div class="row">
				<div class="header header_left hidden-xs col-sm-3 col-md-3 col-lg-3">
					<jdoc:include type="modules" name="header_left" style="none" />
				</div>
				<div class="header header_right hidden-xs col-sm-9 col-md-9 col-lg-9">
					<jdoc:include type="modules" name="header_right" style="none" />
				</div>
			</div>
			<div class="row">
				<div class="header header_bottom_left col-xs-12 col-sm-9 col-md-9 col-lg-9">
					<jdoc:include type="modules" name="header_bottom_left" style="none" />
				</div>
				<div class="header header_bottom_right hidden-xs col-sm-3 col-md-3 col-lg-3">
					<jdoc:include type="modules" name="header_bottom_right" style="none" />
				</div>
			</div>			
		</div>
	</div>		
	
    <div id="top_menu">
        <div class="container-fluid text-center">
		    
		</div>	
	</div>	
	
	<?php if ($this->countModules('slider')) { ?>
		<div id="slider">
			<div class="container-fluid">
				
			</div>	
		</div>		
	<?php } ?>
	
	<div id="content" class="<?php if (JURI::current() == JURI::base()) { echo 'mainpage'; } ?>">
		<div class="container-fluid clearfix">

		</div>
	</div>	
	
    <div id="footer">
        <div class="container-fluid clearfix">

		</div>	
	</div>		

	<?php foreach ($customScripts as $scriptFile=>$paramFile) { ?>
		<script type="text/javascript" src="<?php echo $scriptFile; ?>"></script>
	<?php } ?>

</body>
</html>