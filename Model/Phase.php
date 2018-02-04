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
class Phase extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Phase';

	public $virtualFields = array(
		"dates"=> "CONCAT(Phase.start_date, ' - ' ,Phase.end_date)"
	);
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Phase.end_date DESC';

	public $hasMany = array("Project");


/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
		'start_date' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		),
		'end_date' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		)
	);
		
	protected $_displayFields = array('id',
									  'dates'=>array("label"=>"Date Interval"),
									  'title',
									  'status',
									  'created'
									  );
	protected $_editFields = array(
									'start_date'=>array(
										'type'=>'year',
										'name'=>'data[Phase][start_date]'
									 ),
									'end_date'=>array(
										'type'=>'year',
										'name'=>'data[Phase][end_date]'
									 ),
									'title',
									'subtitle',
									'status'=>array("isPublish"=>true,"type"=>"checkbox"),
								);
	

}
