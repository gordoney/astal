<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_footer
 * @copyright	Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die; 

require_once dirname(__FILE__).'/helper.php';

$document = & JFactory::getDocument();

if ($params->get('captcha_on')) {
	$document->addScript("https://www.google.com/recaptcha/api.js");
}	

$fields = modFormGrHelper::getFields($params);

$existRequire = modFormGrHelper::checkRequire($fields);

$quantityFields = count($fields);

?>

<?php require JModuleHelper::getLayoutPath('mod_form_gr', $params->get('layout', 'default')); ?>