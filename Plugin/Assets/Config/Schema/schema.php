<?php 

class AssetsSchema extends CakeSchema {

	public function before($event = array()) {
		return true;
	}

	public function after($event = array()) {
	}

	public 	$assets = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'primary'),
		'name' => array('type' => 'string', 'null' => true, 'length'=>255,'default' => null),
		'caption' => array('type' => 'text', 'null' => true, 'default' => null),
		'plugin' => array('type' => 'string', 'null' => true, 'length'=>255,'default' => null),
		'model' => array('type' => 'string', 'null' => false, 'length'=>255),
		'row_id' => array('type' => 'integer', 'null' => false, 'length'=>10),
		'attachment' => array('type' => 'string', 'null' => false, 'length'=>255),
		'mime_type' => array('type' => 'string', 'null' => false, 'length'=>50),
		'size' => array('type' => 'string', 'length'=>255,'null' => true, 'default' => null),
		'status' => array('type' => 'integer', 'null' => false, 'default' => '1'),
		'updated' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_unicode_ci', 'engine' => 'InnoDB')
	); 
}
?>