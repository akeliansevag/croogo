<?php

App::uses('AssetsAppModel', 'Assets.Model');

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
class Asset extends AssetsAppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Asset';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Asset.created DESC';

/**
 * Validation
 *
 * @var array
 * @access public
 */
		
	protected $_displayFields = array('id',
									  'attachment',
									  'name',
									  'mime_type',
									  'size',
									  'status',
									  'created'
									  );
	protected $_editFields = array(
									'name',
									'caption',
									'status'=>array("isPublish"=>true,"type"=>"checkbox")
								);
	

}
