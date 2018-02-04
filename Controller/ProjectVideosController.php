<?php

App::uses('AppController', 'Controller');

/**
 * Sponsors Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0 
 * @authorFahad Ibnay Heylaal <sponsor@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class ProjectVideosController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'ProjectVideos';


	public $components = array('Paginator');

/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	//public $uses = array('Sponsor');
	
	//public $issortable = true;

	public function beforeFilter() {
			parent::beforeFilter();
			$this->Security->unlockedActions[] = 'admin_toggle';
		}


	public function admin_toggle($id = null, $status = null) {
		$this->Croogo->fieldToggle($this->ProjectVideo,$id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index($project_id = null) {
		$this->set('title_for_layout', __('List of ProjectVideos'));

		$project = array();
		$project = $this->ProjectVideo->Project->findById($project_id);
		if(!empty($project)){
			$this->Paginator->settings = array(
				"conditions"=> array(
					"ProjectVideo.project_id"=>$project_id
				)
			);

			$isChild = array(
				'model'=>'Project',
				'item'=>$project
			);

			$this->set(compact('isChild'));
		}
		else{
			$this->Session->setFlash(__('Invalid Project'), 'default', array('class' => 'error'));
			$this->redirect(array('controller'=>'projects','action' => 'index'));	
		}
		
		
		$projectvideos = array();
		$projectvideos = $this->paginate();
		$this->set("isSortable",true);
		$this->set(compact('projectvideos'));
		$this->set('displayFields', $this->ProjectVideo->displayFields());
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add($project_id = null) {
		$this->set('title_for_layout', __('Add a ProjectVideo'));
		$project = $this->ProjectVideo->Project->findById($project_id);
		if(empty($project)){
			$this->Session->setFlash(__('Invalid project'), 'default', array('class' => 'error'));
			$this->redirect(array('controller'=>'projects','action' => 'index'));
		}

		if (!empty($this->request->data)) {
			$this->ProjectVideo->create();
			$this->request->data['ProjectVideo']['project_id'] = $project_id;
			if ($this->ProjectVideo->save($this->request->data)) {
				$this->Session->setFlash(__('The ProjectVideo has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index', $project_id));
			} else {
				$this->Session->setFlash(__('The ProjectVideo could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		
		$this->set('editFields', $this->ProjectVideo->editFields());
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit ProjectVideo'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid ProjectVideo'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->ProjectVideo->save($this->request->data)) {
				$this->request->data = $this->ProjectVideo->read(null, $id);
				$this->Session->setFlash(__('The ProjectVideo has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index',$this->request->data['ProjectVideo']['project_id']));
			} else {
				$this->Session->setFlash(__('The ProjectVideo could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->ProjectVideo->read(null, $id);
		}
	
		
		$this->set('editFields', $this->ProjectVideo->editFields());
	}

/**
 * Admin delete
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_delete($id = null) {
		$this->ProjectVideo->recursive = -1;
		$item = $this->ProjectVideo->findById($id);
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for Project Video'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index',$item['ProjectVideo']['project_id']));
		}
		if ($this->ProjectVideo->delete($id)) {
			$this->Session->setFlash(__('Project Video deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index',$item['ProjectVideo']['project_id']));
		}
	}

	/**
 * Admin moveup
 *
 * @param integer $id
 * @param integer $step
 * @return void
 * @access public
 */
	public function admin_moveup($id, $step = 1) {
		$this->ProjectVideo->recursive = -1;
		$item = $this->ProjectVideo->findById($id);
		if ($this->ProjectVideo->moveUp($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved up successfully'), 'flash', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move up'), 'flash', array('class' => 'error'));
		}

		return $this->redirect(array('action' => 'index',$item['ProjectVideo']['project_id']));
	}

/**
 * Admin movedown
 *
 * @param integer $id
 * @param integer $step
 * @return void
 * @access public
 */
	public function admin_movedown($id, $step = 1) {
		$this->ProjectVideo->recursive = -1;
		$item = $this->ProjectVideo->findById($id);
		if ($this->ProjectVideo->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'flash', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'flash', array('class' => 'error'));
		}

		return $this->redirect(array('action' => 'index',$item['ProjectVideo']['project_id']));
	}


}
