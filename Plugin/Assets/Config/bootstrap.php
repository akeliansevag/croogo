<?php
$settings = Configure::read("Assets");
/**
 * Routes
 *
 * example_routes.php will be loaded in main app/config/routes.php file.
 */

//Croogo::hookRoutes('Example');

/**
 * Behavior
 *
 * This plugin's Example behavior will be attached whenever Node model is loaded.
 */



/**
 * Component
 *
 * This plugin's Example component will be loaded in ALL controllers.
 */

//Croogo::hookComponent('*', 'Example.Example');

/**
 * Helper
 *
 * This plugin's Example helper will be loaded via NodesController.
 */

//Croogo::hookHelper('Nodes', 'Example.Example');

/**
 * Admin menu (navigation)
 */
CroogoNav::add('Assets', array(
	'icon' => array('briefcase', 'large'),
	'title' => 'Assets',
	'url' => '#',
	'children' => array(
		'Help' => array(
			'title' => 'Help',
			'url' => array(
				'admin' => true,
				'plugin' => 'assets',
				'controller' => 'assets',
				'action' => 'help',
			),
		),
		'Settings' => array(
			'title' => 'Settings',
			'url' => array(
				'admin' => true,
				'plugin' => 'settings',
				'controller' => 'settings',
				'action' => 'prefix',
				'Assets'
			),
		)

	)
));

$linked_models = $settings['models'];
$linked_models = explode(",",$linked_models);
foreach($linked_models as $key=>$model){
	$model = trim($model);
	$model = inflector::camelize($model);

		Croogo::hookAdminRowAction(inflector::pluralize($model).'/admin_index', 'Icon Only', array(
			'admin:true/plugin:assets/controller:assets/action:index/:id/'.$model => array(
				'title' => false,
				'options' => array(
					'icon' => 'picture',
					'tooltip' => array(
						'data-title' => 'Assets'
					),
				),
			),
		));

		Croogo::hookBehavior($model, 'Assets.Assets', array());
}
/* Row action with icon */



