<?php
class jShopCategoriesGrHelper {
	public function getCatsTree() {
		$categoriesTree = array();	
		$jshopConfig = JSFactory::getConfig();
		$categoryTable = JTable::getInstance('category', 'jshop'); 
		$categories = $categoryTable->getSubCategories(0, 'ordering');

		foreach ($categories as $key=>$category) {
			$categoriesTree[$key] = array('name'=>$category->name, 'category_image'=>$jshopConfig->image_category_live_path.'/'.$category->category_image, 'category_link'=>$category->category_link);
			
			$categoriesChild = $categoryTable->getSubCategories($category->category_id, 'ordering');
			foreach ($categoriesChild as $keyChild=>$categoryChild) {
				$categoriesTree[$key]['child'][$keyChild] = array('name'=>$categoryChild->name, 'category_image'=>$categoryChild->category_image, 'category_link'=>$categoryChild->category_link);
			}
		}
		return $categoriesTree;
	}
}