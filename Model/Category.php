<?php

App::uses('AppModel', 'Model');

/**
 * Member
 *
 * PHP version 5
 *
 * @category Model
 * @package  Croogo
 * @version  1.0
 * @author   Avo Sarafian <avo.sarafian@ogilvy.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class Category extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Category';

	public $actsAs = array(
		'Croogo.Ordered' => array(
			'field' => 'weight',
			'foreign_key' => false,
		)
	);
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Category.created DESC';

	public $hasAndBelongsToMany = array("Project");


/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
		'name' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		)
	);
		
	protected $_displayFields = array('id',
									  'name',
									  'color',
									  'status',
									  'created'
									  );
	protected $_editFields = array(
									'name',
									'slug',
									'color'=>array("label"=>"Color (hex)"),
									'status'=>array("isPublish"=>true,"type"=>"checkbox"),
								);
	

}
