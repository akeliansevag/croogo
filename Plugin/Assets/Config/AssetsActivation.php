<?php
/**
 * Example Activation
 *
 * Activation class for Example plugin.
 * This is optional, and is required only if you want to perform tasks when your plugin is activated/deactivated.
 *
 * @package  Croogo
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class AssetsActivation {

/**
 * onActivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
	public function beforeActivation(&$controller) {
		return true;
	}

/**
 * Called after activating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
	public function onActivation(&$controller) {
		// ACL: set ACOs with permissions
		$controller->Croogo->addAco('Assets/Assets/admin_index', array('admin'));

		 // Add a table to the DB
        App::import('Model', 'CakeSchema');
        App::import('Model', 'ConnectionManager');

        $db = ConnectionManager::getDataSource('default');

        CakePlugin::load('Assets');
        $schema =& new CakeSchema(array('plugin'=>'Assets','name'=>'Assets'));
        $check_tables = $db->listSources();

        $schema = $schema->load();
        
        if (!in_array('assets', $check_tables)) {
            foreach($schema->tables as $table => $fields) {
                $create = $db->createSchema($schema, $table);
                $db->execute($create);
            } 
        }

        $controller->Setting->write('Assets.models',
        							'Node',
	        						 array(
	        						 	'description' => '(ex: Node, Project, Clients)',
	        						 	'editable' => 1
	        						 )
        );
	}

/**
 * onDeactivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
	public function beforeDeactivation(&$controller) {
		return true;
	}

/**
 * Called after deactivating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
	public function onDeactivation(&$controller) {
		// ACL: remove ACOs with permissions
		$controller->Croogo->removeAco('Assets'); // ExampleController ACO and it's actions will be removed

		$controller->Setting->deleteKey('Assets.models');
		
	}
}
