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
class PhasesController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Phases';


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
		$this->Croogo->fieldToggle($this->Phase,$id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Phases'));

		$phases = array();
		$phases = $this->paginate();
		
		$this->set(compact('phases'));
		$this->set('displayFields', $this->Phase->displayFields());
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Phase'));

		if (!empty($this->request->data)) {
			$this->Phase->create();

			if ($this->Phase->save($this->request->data)) {
				$this->Session->setFlash(__('The Phase has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Phase could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		
		$this->set('editFields', $this->Phase->editFields());
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit Phase'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Phase'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Phase->save($this->request->data)) {
				$this->Session->setFlash(__('The Phase has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Phase could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Phase->read(null, $id);
		}
	
		
		$this->set('editFields', $this->Phase->editFields());
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
			$this->Session->setFlash(__('Invalid id for Phase'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Phase->delete($id)) {
			$this->Session->setFlash(__('Phase deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}

}
