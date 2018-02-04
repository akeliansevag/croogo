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
class Project extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Project';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Project.created DESC';


	public $belongsTo = array("Phase");

	public $hasMany = array(
		"ProjectImage",
		"ProjectVideo",
		"ProjectDocument"
	);

	public $hasAndBelongsToMany = array("Category");


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
		),
		'date' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		)
	);
		
	protected $_displayFields = array('id',
									  'thumb',
									  'title',
									  'date',
									  'title',
									  'status',
									  'created'
									  );
	protected $_editFields = array(
									'thumb',
									'title',
									'description',
									'date'=>array(
										'type'=>'year',
										'name'=>'data[Project][date]'
									 ),
									'date_literal',
									'phase_id',
									'Category'=>array("multiple"=>"checkbox","isAdminTab"=>true),
									'keywords',
									'status'=>array("isPublish"=>true,"type"=>"checkbox"),
								);
	

}
