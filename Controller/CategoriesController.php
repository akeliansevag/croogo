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
class CategoriesController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Categories';


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
		$this->Croogo->fieldToggle($this->Category,$id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Categories'));

		$categories = array();
		$categories = $this->paginate();
		
		$this->set("isSortable",true);
		$this->set(compact('categories'));
		$this->set('displayFields', $this->Category->displayFields());
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Category'));

		if (!empty($this->request->data)) {
			$this->Category->create();

			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash(__('The Category has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Category could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		
		$this->set('editFields', $this->Category->editFields());
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit Category'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Category'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash(__('The Category has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Category could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Category->read(null, $id);
		}
	
		
		$this->set('editFields', $this->Category->editFields());
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
			$this->Session->setFlash(__('Invalid id for Category'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Category->delete($id)) {
			$this->Session->setFlash(__('Category deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
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
		if ($this->Category->moveUp($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved up successfully'), 'flash', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move up'), 'flash', array('class' => 'error'));
		}

		return $this->redirect(array('action' => 'index'));
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
		if ($this->Category->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'flash', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'flash', array('class' => 'error'));
		}

		return $this->redirect(array('action' => 'index'));
	}


}
