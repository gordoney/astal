<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_popular
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

abstract class modSecondMenuGrHelper
{
	public function getMenu($params) {
		$menu = array();
		foreach (json_decode($params->get('menu')) as $nameFields=>$fields) {
			foreach ($fields as $key=>$field) {
				$menu[$key][$nameFields] = $field;
			}
		}

		return $menu;
	}
}

