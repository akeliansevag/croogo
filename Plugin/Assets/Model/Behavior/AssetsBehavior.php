<?php

App::uses('ModelBehavior', 'Model');

/**
 * Example Behavior
 *
 * @category Behavior
 * @package  Croogo
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class AssetsBehavior extends ModelBehavior {

/**
 * Setup
 *
 * @param Model $model
 * @param array $config
 * @return void
 */
	public function setup(Model $model, $config = array()) {
		if (is_string($config)) {
			$config = array($config);
		}

		$this->settings[$model->alias] = $config;
	}

/**
 * afterFind callback
 *
 * @param Model $model
 * @param array $results
 * @param boolean $primary
 * @return array
 */
	public function afterFind(Model $model, $results, $primary = false) {
		$row_id = "";
		$model_name = $model->name;
		$settings = Configure::read("Assets");
		$linked_models = $settings['models'];
		$linked_models = explode(",",$linked_models);

		$this->Asset = ClassRegistry::init("Assets.Asset");

		if ($primary && isset($results[0][$model_name])) {
			foreach ($results as $i => $result) {
				if (isset($results[$i][$model_name]['id'])) {
					$row_id = $results[$i][$model_name]['id'];
					$results[$i]['Asset'] = $this->Asset->find("all",array(
						"conditions"=>array(
							"Asset.model"=>$model_name,
							"Asset.row_id"=>$row_id
						)
					));

				}
			}
		} elseif (isset($results[$model_name])) {
			if (isset($results[$model_name]['id'])) {
					$row_id = $results[$model_name]['id'];
					$results['Asset'] = $this->Asset->find("all",array(
						"conditions"=>array(
							"Asset.model"=>$model_name,
							"Asset.row_id"=>$row_id
						)
					));
			}
		}

	
		return $results;
	}

}
