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
class ProjectDocumentsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'ProjectDocuments';


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
		$this->Croogo->fieldToggle($this->ProjectDocument,$id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index($project_id = null) {
		$this->set('title_for_layout', __('List of ProjectDocuments'));

		$project = array();
		$project = $this->ProjectDocument->Project->findById($project_id);
		if(!empty($project)){
			$this->Paginator->settings = array(
				"conditions"=> array(
					"ProjectDocument.project_id"=>$project_id
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
		
		
		$projectdocuments = array();
		$projectdocuments = $this->paginate();
		$this->set("isSortable",true);
		$this->set(compact('projectdocuments'));
		$this->set('displayFields', $this->ProjectDocument->displayFields());
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add($project_id = null) {
		$this->set('title_for_layout', __('Add a ProjectDocument'));
		$project = $this->ProjectDocument->Project->findById($project_id);
		if(empty($project)){
			$this->Session->setFlash(__('Invalid project'), 'default', array('class' => 'error'));
			$this->redirect(array('controller'=>'projects','action' => 'index'));
		}

		if (!empty($this->request->data)) {
			$this->ProjectDocument->create();
			$this->request->data['ProjectDocument']['project_id'] = $project_id;
			if ($this->ProjectDocument->save($this->request->data)) {
				$this->Session->setFlash(__('The ProjectDocument has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index', $project_id));
			} else {
				$this->Session->setFlash(__('The ProjectDocument could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		
		$this->set('editFields', $this->ProjectDocument->editFields());
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit ProjectDocument'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid ProjectDocument'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->ProjectDocument->save($this->request->data)) {
				$this->request->data = $this->ProjectDocument->read(null, $id);
				$this->Session->setFlash(__('The ProjectDocument has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index',$this->request->data['ProjectDocument']['project_id']));
			} else {
				$this->Session->setFlash(__('The ProjectDocument could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->ProjectDocument->read(null, $id);
		}
	
		
		$this->set('editFields', $this->ProjectDocument->editFields());
	}

/**
 * Admin delete
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_delete($id = null) {
		$this->ProjectDocument->recursive = -1;
		$item = $this->ProjectDocument->findById($id);
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for Project Document'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index',$item['ProjectDocument']['project_id']));
		}
		if ($this->ProjectDocument->delete($id)) {
			$this->Session->setFlash(__('Project Document deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index',$item['ProjectDocument']['project_id']));
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
		$this->ProjectDocument->recursive = -1;
		$item = $this->ProjectDocument->findById($id);
		if ($this->ProjectDocument->moveUp($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved up successfully'), 'flash', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move up'), 'flash', array('class' => 'error'));
		}

		return $this->redirect(array('action' => 'index',$item['ProjectDocument']['project_id']));
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
		$this->ProjectDocument->recursive = -1;
		$item = $this->ProjectDocument->findById($id);
		if ($this->ProjectDocument->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'flash', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'flash', array('class' => 'error'));
		}

		return $this->redirect(array('action' => 'index',$item['ProjectDocument']['project_id']));
	}


}
