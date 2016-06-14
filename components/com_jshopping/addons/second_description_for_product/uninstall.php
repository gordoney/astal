<?php
	defined('_JEXEC') or die('Restricted access');
	$db = JFactory::getDbo();
	
	$db->setQuery("DELETE FROM `#__extensions` WHERE element = 'second_description_for_product' AND folder = 'jshoppingproducts' AND `type` = 'plugin'");
	$db->query();
	
	$db->setQuery("DELETE FROM `#__extensions` WHERE element = 'second_description_for_product' AND folder = 'jshoppingcheckout' AND `type` = 'plugin'");
	$db->query();
	
	jimport('joomla.filesystem.folder');
	foreach(array(
        'plugins/jshoppingproducts/second_description_for_product/',
		'plugins/jshoppingadmin/second_description_for_product/',
		'components/com_jshopping/addons/second_description_for_product/'
	) as $folder){JFolder::delete(JPATH_ROOT.'/'.$folder);}
?>