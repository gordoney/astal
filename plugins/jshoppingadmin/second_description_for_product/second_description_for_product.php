<?php
defined('_JEXEC') or die('Restricted access');

class plgJshoppingAdminsecond_description_for_product extends JPlugin
{
	var $separator = "{second_description}";
	
	function __construct(&$subject, $config){
		parent::__construct($subject, $config);
	}

	function onBeforeDisplaySaveProduct(&$post, &$product) {
		$_lang = JModelLegacy::getInstance('Languages','JshoppingModel');
		$languages = $_lang->getAllLanguages(1);
        foreach($languages as $lang){
            $post['description_'.$lang->language] .= $this->separator . JRequest::getVar('second_description'.$lang->id,'','post',"string", 2);
        }
	}
	
	function onBeforeDisplayEditProduct(&$product, &$related_products, &$lists, &$listfreeattributes, &$tax_value) {
		$_lang = JModelLegacy::getInstance('Languages','JshoppingModel');
		$languages = $_lang->getAllLanguages(1);
        foreach($languages as $lang){
			$tmp = explode($this->separator, $product->{'description_'.$lang->language});
			if (isset($tmp[1])) {
				$product->{'description_'.$lang->language} = $tmp[0];
				$product->{'second_description_'.$lang->language} = $tmp[1];
			} else {
				$product->{'second_description_'.$lang->language} = '';
			}
        }
	}
	
	function onBeforeDisplayEditProductView(&$view) {
		$_lang = JModelLegacy::getInstance('Languages','JshoppingModel');
		$languages = $_lang->getAllLanguages(1);
        foreach($languages as $lang){
			if (isset($view->product->{'second_description_'.$lang->language})) {
				if (!isset($view->{'plugin_template_description_'.$lang->language})) $view->{'plugin_template_description_'.$lang->language} = '';
				$editor = JFactory::getEditor();
				$second_description = "second_description_".$lang->language;
				$view->{'plugin_template_description_'.$lang->language} .= '<tr><td class="key">Second '._JSHOP_DESCRIPTION.'</td><td>'.$editor->display('second_description'.$lang->id,  $view->product->$second_description , '100%', '350', '75', '20' ).'</td></tr>';
			}
		}
	}

}