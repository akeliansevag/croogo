<?php

App::uses('AssetsAppController', 'Assets.Controller');
App::uses('Folder', 'Utility');

/**
 * Example Controller
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <contact@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class AssetsController extends AssetsAppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Assets';

/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Assets.Asset','Setting');

	public $helpers = array("Assets.Assets","Assets.Image");

	public function beforeFilter() {
			parent::beforeFilter();
			$this->Security->unlockedActions[] = 'admin_file';
			$this->Security->unlockedActions[] = 'admin_ajax';


	}

/**
 * admin_index
 *
 * @return void
 */
	public function admin_index($id = null , $model = null) {
		$this->set('title_for_layout', 'Assets');
		$this->set(compact("id","model"));

		$assets = $this->Asset->find("all",array(
			"conditions"=>array(
				"Asset.model"=>$model,
				"Asset.row_id"=>$id
			)
		));


		$this->set(compact("assets"));
		$this->set("displayFields",$this->Asset->displayFields());
		
	}

	public function admin_ajax(){
		if($this->request->data){
			$id = $this->request->data['id'];
			$model = $this->request->data['model'];
			$this->set(compact("id","model"));
			$assets = $this->Asset->find("all",array(
				"conditions"=>array(
					"Asset.model"=>$model,
					"Asset.row_id"=>$id
				)
			));
			$this->set(compact("assets"));
			$this->set("displayFields",$this->Asset->displayFields());

		}

	}
	public function admin_add() {
		
	}

	public function admin_edit($id = null,$model = null, $row_id = null){
		$this->set('title_for_layout', __('Edit Asset'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Asset'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index',$row_id,$model));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Asset->save($this->request->data)) {
				$this->Session->setFlash(__('The Asset has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index',$row_id,$model));
			} else {
				$this->Session->setFlash(__('The Asset could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Asset->read(null, $id);
		}

		if(empty($this->request->data)){
			$this->Session->setFlash(__('Invalid Asset'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index',$row_id,$model));
		}

		$this->set('asset',$this->request->data);
		$this->set('editFields', $this->Asset->editFields());
	}

	public function admin_remove($id = null, $model = null, $row_id = null){
		$this->autoRender = false;
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for Asset'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index',$row_id, $model));
		}
		$asset = $this->Asset->read(null, $id);
		if ($this->Asset->delete($id)) {
			unlink(WWW_ROOT.$asset['Asset']['attachment']);
			$this->Session->setFlash(__('Asset deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index',$row_id, $model));
		}
	}

	public function admin_file(){
		$this->autoRender = false;
		$row_id = "";
		$model = "";
		$asset = array();
 
		$webroot = WWW_ROOT."assets";
		$file = array();

		//create the assets folder in webroot
		$dir = new Folder($webroot);

		if(!$dir->path){
			$dir->create($webroot,0777);
		}

		//check if there is an uploaded file
		if($this->request->params['form']['file']){
			$file = $this->request->params['form']['file'];
		}


		if($this->request->data){
			$row_id = $this->request->data['row_id'];
			$model = $this->request->data['model'];
 		}
		

		$name = $this->_get_name($file['name']);
		$file['name'] = uniqid().".".$this->_get_extension($file['name']);
		move_uploaded_file($file['tmp_name'],$webroot.DS.$file['name']);

		$asset['name'] = $name;
		$asset['model'] = $model;
		$asset['row_id'] = $row_id;
		$asset['attachment'] = "assets/".$file['name'];
		$asset['mime_type'] = $file['type'];
		$asset['size'] = $file['size'];

		$this->Asset->create();
		$this->Asset->save($asset);

		
		echo json_encode($this->request->params['form']);

	}

	private function _get_extension($name){
		$this->autoRender = false;
		$temp = explode('.', $name);
	    $ext = end($temp);
	    return strtolower($ext);
	}

	private function _get_name($name){
		$this->autoRender = false;
		$temp = explode('.', $name);
	    $name = $temp[0];
	    return strtolower($name);
	}

}
