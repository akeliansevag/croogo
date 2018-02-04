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
class ProjectsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Projects';

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
		$this->Croogo->fieldToggle($this->Project,$id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Projects'));

		$projects = array();
		$projects = $this->paginate();

		$isParent = array();

		$isParent[] = array(
			"controller"=>"project_images",
			"action"=>"index",
			"tooltip_icon"=>"picture",
			"tooltip_text"=>"View Images"
		);
		
		$isParent[] = array(
			"controller"=>"project_videos",
			"action"=>"index",
			"tooltip_icon"=>"facetime-video",
			"tooltip_text"=>"View Videos"
		);

		$isParent[] = array(
			"controller"=>"project_documents",
			"action"=>"index",
			"tooltip_icon"=>"file-alt",
			"tooltip_text"=>"View Documents"
		);

		$isParent[] = array(
			"controller"=>"project_links",
			"action"=>"index",
			"tooltip_icon"=>"external-link",
			"tooltip_text"=>"View links"
		);

		$this->set(compact('isParent'));		
		$this->set(compact('projects'));
		$this->set('displayFields', $this->Project->displayFields());
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Project'));

		if (!empty($this->request->data)) {
			$this->Project->create();

			if ($this->Project->save($this->request->data)) {
				$this->Session->setFlash(__('The Project has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Project could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}

		$this->set('categories',$this->Project->Category->find("list"));

		$this->set('phases',$this->Project->Phase->find('list',array(
			"fields"=>array("Phase.dates"),
			"order"=>"Phase.end_date DESC"
		)));
		$this->set('editFields', $this->Project->editFields());
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit Project'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Project'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Project->save($this->request->data)) {
				$this->Session->setFlash(__('The Project has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Project could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Project->read(null, $id);
		}
	
		$this->set('categories',$this->Project->Category->find("list"));
		$this->set('phases',$this->Project->Phase->find('list',array(
			"fields"=>array("Phase.dates"),
			"order"=>"Phase.end_date DESC"
		)));
		$this->set('editFields', $this->Project->editFields());
	}

/**
 * Admin delete
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for Project'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Project->delete($id)) {
			$this->Session->setFlash(__('Project deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}

}
