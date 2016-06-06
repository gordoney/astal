<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_articles_popular
 * @copyright	Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

abstract class modContactsGrHelper
{
	public function getContacts($params) {
		$contacts = array();
		foreach (json_decode($params->get('contacts')) as $nameFields=>$fields) {
			foreach ($fields as $key=>$field) {
				$contacts[$key][$nameFields] = $field;
			}
			if ($nameFields == 'contact_type') {
				foreach ($fields as $key=>$field) {
					$contacts[$key]['contact_img'] = '/modules/mod_contacts_gr/img/'.$field.'.png';
				}
			}
		}

		return $contacts;
	}
}

