<?php

$this->extend('/Common/admin_edit');

$this->Html
	->addCrumb($this->Html->icon('home'), '/admin')
	->addCrumb(__d('croogo', 'Blocks'), array('plugin' => 'blocks', 'controller' => 'blocks', 'action' => 'index'));

if ($this->request->params['action'] == 'admin_edit') {
	$this->Html->addCrumb($this->request->data['Block']['title'], '/' . $this->request->url);
}
if ($this->request->params['action'] == 'admin_add') {
	$this->Html->addCrumb(__d('croogo', 'Add'), '/' . $this->request->url);
}

$this->append('form-start', $this->Form->create('Block', array(
	'class' => 'protected-form',
)));


$this->append('tab-heading');
	echo $this->Croogo->adminTab(__d('croogo', 'Block'), '#block-basic');
	echo $this->Croogo->adminTab(__d('croogo', 'Access'), '#block-access');
	echo $this->Croogo->adminTab(__d('croogo', 'Visibilities'), '#block-visibilities');
	echo $this->Croogo->adminTab(__d('croogo', 'Params'), '#block-params');
	echo $this->Croogo->adminTab(__d('croogo', 'Attachment'), '#block-attachment');
	echo $this->Croogo->adminTabs();
$this->end();

$this->append('tab-content');

	echo $this->Html->tabStart('block-basic') .
		$this->Form->input('id') .
		$this->Form->input('title', array(
			'label' => __d('croogo', 'Title'),
		)) .
		$this->Form->input('alias', array(
			'label' => __d('croogo', 'Alias'),
			'help' => __d('croogo', 'unique name for your block'),
		)) .
		$this->Form->input('region_id', array(
			'label' => __d('croogo', 'Region'),
			'help' => __d('croogo', 'if you are not sure, choose \'none\''),
		)) .
		$this->Form->input('body', array(
			'label' => __d('croogo', 'Body'),
		)) .

		$this->Form->input('description', array(
			'label' => __d('croogo', 'Description'),
		)) .

		$this->Form->input('class', array(
			'label' => __d('croogo', 'Class')
		)) .
		$this->Form->input('element', array(
			'label' => __d('croogo', 'Element')
		));
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('block-access') .
		$this->Form->input('Role.Role', array(
			'label' => __d('croogo', 'Role'),
		));
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('block-visibilities') .
		$this->Form->input('Block.visibility_paths', array(
			'label' => __d('croogo', 'Visibility Paths'),
			'help' => __d('croogo', 'Enter one URL per line. Leave blank if you want this Block to appear in all pages.')
		));
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('block-params') .
		$this->Form->input('Block.params', array(
			'label' => __d('croogo', 'Params'),
		));
	echo $this->Html->tabEnd();

	echo $this->Html->tabStart('block-attachment');
	echo $this->Form->input('attachment', array(
			'label' => __d('croogo', 'Image'),
			'style'=> 'width:300px;margin-right:10px;'
		));
	$control = "Block".str_replace(" ", "",ucwords(str_replace("_", "  ", "attachment")));
	$content = '<div id="m'.$control.'"><a href="javascript:void(0);" onclick=\'javascript:window.open("'. $this->webroot.'admin/file_manager/attachments/custom?controler='.$control.'","browserWin",
"menubar=no,width=1050,height=600,toolbar=no,scrollbars=yes");\' class="attachment_link" >Attach a File</a></div>';
	$content .= '<script type="text/javascript">$(document).ready(function(){var temp = $("#m'.$control.'").html(); $("#m'.$control.'").empty(); $("#'.$control.'").parent().append(temp);});</script>';
	echo $content;
	echo $this->Html->tabEnd();

	echo $this->Croogo->adminTabs();
$this->end();

$this->append('panels');
	echo $this->Html->beginBox(__d('croogo', 'Publishing')) .
		$this->Form->button(__d('croogo', 'Apply'), array('name' => 'apply')) .
		$this->Form->button(__d('croogo', 'Save'), array('button' => 'success')) .
		$this->Html->link(__d('croogo', 'Cancel'), array('action' => 'index'), array('button' => 'danger')) .
		$this->Form->input('status', array(
			'legend' => false,
			'type' => 'radio',
			'label' => true,
			'default' => CroogoStatus::UNPUBLISHED,
			'options' => $this->Croogo->statuses(),
		)) .
		$this->Form->input('show_title', array(
			'label' => __d('croogo', 'Show title ?'),
		)) .
		$this->Html->div('input-daterange',
			$this->Form->input('publish_start', array(
				'label' => __d('croogo', 'Publish Start'),
				'type' => 'text',
			)) .
			$this->Form->input('publish_end', array(
				'label' => __d('croogo', 'Publish End'),
				'type' => 'text',
			))
		);
	echo $this->Html->endBox();

	echo $this->Croogo->adminBoxes();
$this->end();

$this->append('form-end', $this->Form->end());
