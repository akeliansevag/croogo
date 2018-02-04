<?php
if (empty($modelClass)) {
	$modelClass = Inflector::singularize($this->name);
}
if (!isset($className)) {
	$className = strtolower($this->name);
}
$humanName = Inflector::humanize(Inflector::underscore($modelClass));
$i18nDomain = empty($this->params['plugin']) ? 'croogo' : $this->params['plugin'];

$rowClass = $this->Theme->getCssClass('row');
$columnFull = $this->Theme->getCssClass('columnFull');
$tableClass = isset($tableClass) ? $tableClass : $this->Theme->getCssClass('tableClass');

$showActions = isset($showActions) ? $showActions : true;

if ($pageHeading = trim($this->fetch('page-heading'))):
	echo $pageHeading;
endif;

$parentModel = "";
$modelDetail = "";
$parent_id = "";
if(!empty($isChild)){
	$parentModel = $isChild['model'];
	$modelDetail = $isChild['item'];
	$parent_id = $modelDetail[$parentModel]['id'];

}
?>

<h2 class="hidden-desktop">
	<?php if ($titleBlock = $this->fetch('title')): ?>
		<?php echo $titleBlock; ?>
	<?php else: ?>
		<?php
		echo !empty($title_for_layout) ? $title_for_layout : $this->name;
		?>
	<?php endif; ?>
</h2>

<?php if ($showActions): ?>
<div class="<?php echo $rowClass; ?>">
	<div class="actions <?php echo $columnFull; ?>">
		<?php
		if ($actionsBlock = $this->fetch('actions')):
			echo $actionsBlock;
		else:
			echo $this->Croogo->adminAction(
				__d('croogo', 'New'),
				array('action' => 'add', $parent_id),
				array('button' => 'success')
			);

			if(!empty($isChild)){
				echo $this->Croogo->adminAction(
					__d('croogo', 'Back to '.Inflector::pluralize(Inflector::humanize(Inflector::underscore($parentModel)))),
					array('controller'=>Inflector::tableize($parentModel),'action' => 'index'),
					array('button' => 'success')
				);
			}
		endif;
		?>
	</div>
</div>
<?php endif; ?>

<?php
$tableHeaders = trim($this->fetch('table-heading'));
if (!$tableHeaders && isset($displayFields)):
	$tableHeaders = array();
	foreach ($displayFields as $field => $arr):
		if ($arr['sort']):
			$tableHeaders[] = $this->Paginator->sort($field, __d($i18nDomain, $arr['label']));
		else:
			$tableHeaders[] = __d($i18nDomain, $arr['label']);
		endif;
	endforeach;
	$tableHeaders[] = __d('croogo', 'Actions');
	$tableHeaders = $this->Html->tableHeaders($tableHeaders);
endif;

$tableBody = trim($this->fetch('table-body'));
if (!$tableBody && isset($displayFields)):
	$rows = array();
	if (!empty(${strtolower($this->name)})):
		foreach (${strtolower($this->name)} as $item):
			$actions = array();

			if (isset($this->request->query['chooser'])):
				$title = isset($item[$modelClass]['title']) ? $item[$modelClass]['title'] : null;
				$actions[] = $this->Croogo->adminRowAction(__d('croogo', 'Choose'), '#', array(
					'class' => 'item-choose',
					'data-chooser_type' => $modelClass,
					'data-chooser_id' => $item[$modelClass]['id'],
				));
			else:
			
			
				/*EXPERIMENTAL*/
		if(!empty($isSortable)){
			$actions[] = $this->Croogo->adminRowAction('',
				array('action' => 'moveup', $item[$modelClass]['id']),
				array('icon' => 'chevron-up', 'tooltip' => __d('croogo', 'Move up'),
			));
			$actions[] = $this->Croogo->adminRowAction('',
				array('action' => 'movedown', $item[$modelClass]['id']),
				array('icon' => 'chevron-down', 'tooltip' => __d('croogo', 'Move down'),
				)
			);
		}
		if(!empty($hasChildren)){
			$actions[] = $this->Croogo->adminRowAction(
				'',
				array('controller'=>$hasChildren['controller'], 'action' => $hasChildren['action'], $item[$modelClass]['id']),
				array('icon' => 'zoom-in', 'tooltip' => __d('croogo', 'View Photos'))
			);
		}
		/*EXPERIMENTAL*/

		if(!empty($isParent)){
			foreach($isParent as $childInfo){
				$actions[] = $this->Croogo->adminRowAction(
					'',
					array('controller'=>$childInfo['controller'], 'action' => $childInfo['action'], $item[$modelClass]['id']),
					array('icon' => $childInfo['tooltip_icon'], 'tooltip' => __d('croogo', $childInfo['tooltip_text']))
				);
			}
			

		}
			
			
				$actions[] = $this->Croogo->adminRowAction('',
					array('action' => 'edit', $item[$modelClass]['id']),
					array('icon' => $this->Theme->getIcon('update'), 'tooltip' => __d('croogo', 'Edit this item'))
				);
				$actions[] = $this->Croogo->adminRowActions($item[$modelClass]['id']);
				$actions[] = $this->Croogo->adminRowAction('',
					array(
						'action' => 'delete',
						$item[$modelClass]['id'],
					),
					array(
						'icon' => $this->Theme->getIcon('delete'),
						'tooltip' => __d('croogo', 'Remove this item')
					),
					__d('croogo', 'Are you sure?'));
			endif;
			$actions = $this->Html->div('item-actions', implode(' ', $actions));
			$row = array();
			foreach ($displayFields as $key => $val):
				extract($val);
				if (!is_int($key)) {
					$val = $key;
				}
				if (strpos($val, '.') === false) {
					$val = $modelClass . '.' . $val;
				}
				list($model, $field) = pluginSplit($val);
				if(
					strpos($key, "attachment") !== false || 
					strpos($key, "image") !== false || 
					strpos($key, "background") !== false ||
					strpos($key, "photo") !== false || 
					strpos($key, "thumbs") !== false || 
					strpos($key, "thumb") !== false || 
					strpos($key, "thumbnail") !== false || 
					strpos($key, "url") !== false || 
					strpos($key, "logo") !== false || 
					strpos($key, "icon") !== false
				){
					$check_val = $item[$model][$field]; 
					if(!empty($check_val)) {
						$temp_explode = explode(".", $check_val);
						if(end($temp_explode) != "pdf"){
							$row[] = $this->Html->link($this->Image->resize('/uploads/'.$check_val, 100, 75), $this->Html->url('/uploads/'.$check_val, true), array(
										'class' => 'thickbox',
										'escape' => false,
										'title' => $val
									 ));
						}
						else{
							$row[] = $this->Html->link($check_val, $this->Html->url('/uploads/'.$check_val, true), array(
										'target' => '_blank',
										'escape' => false,
										'title' => $val
									 ));
						}
									 
					}else
						$row[] = "no attachment";
			
				}elseif(
					strpos($key, "status") !== false || 
					strpos($key, "promoted") !== false || 
					strpos($key, "recommended") !== false  
				){
					$row[] = $this->element('admin/toggle', array(
														'id' => $item[$model]['id'],
														"status" => $item[$model][$field], //by "status" we mean value
														"field" => $field //what field it is "promoted", "status", etc...
													));	
			
				}else{							
					$row[] = $this->Layout->displayField($item, $model, $field, compact('type', 'url', 'options'));
				}
				//$row[] = $this->Layout->displayField($item, $model, $field, compact('type', 'url', 'options'));
			endforeach;
			$row[] = $actions;
			$rows[] = $row;
		endforeach;
		$tableBody = $this->Html->tableCells($rows);
	endif;
endif;

$tableFooters = trim($this->fetch('table-footer'));

?>
<div class="<?php echo $rowClass; ?>">
	<div class="<?php echo $columnFull; ?>">
		<?php if (!empty($isUploadable)): ?>
        <script type="text/javascript">
		Dropzone.options.myDropzone = {
				url: Croogo.basePath + "file_upload.php",
				success: function(file, response){
					//console.log(response);
					var fileurl = $.parseJSON(response).obj.Url;
					var filename = $.parseJSON(response).obj.Name;
					var ItemID = $.parseJSON(response).obj.ItemID;
					var ParentName = $.parseJSON(response).obj.ParentName;
					
					var html = '<tr><td>'+ItemID+'</td> <td><a title="Item.url" class="thickbox" href="#"><img alt="thumb" width="100" src="'+Croogo.basePath+'uploads/'+fileurl+'"></a></td> <td>'+filename+'</td>  <td>'+ParentName+'</td> <td>2013-12-07 01:21:18</td> <td><div class="item-actions"><a data-trigger="hover" data-placement="top" rel="tooltip" data-title="Move up" class="moveup" href="'+Croogo.basePath+'admin/items/moveup/'+ItemID+'" data-original-title=""><i class="icon-chevron-up icon-large"></i> </a> <a data-trigger="hover" data-placement="top" rel="tooltip" data-title="Move down" class="movedown" href="'+Croogo.basePath+'admin/items/movedown/'+ItemID+'" data-original-title=""><i class="icon-chevron-down icon-large"></i> </a> <a data-trigger="hover" data-placement="top" rel="tooltip" data-title="Edit this item" class="edit" href="'+Croogo.basePath+'admin/items/edit/'+ItemID+'" data-original-title=""><i class="icon-pencil icon-large"></i> </a> <form method="post" style="display:none;" id="post_'+ItemID+'" name="post_'+ItemID+'" action="'+Croogo.basePath+'admin/items/delete/'+ItemID+'"><input type="hidden" value="POST" name="_method"></form><a data-trigger="hover" data-placement="top" rel="tooltip" data-title="Remove this item" onclick="if (confirm(\'Are you sure?\')) { document.post_'+ItemID+'.submit(); } event.returnValue = false; return false;" class="delete" href="#" data-original-title=""><i class="icon-trash icon-large"></i> </a> </div></td></tr>';
					$("table.table.table-striped").find("tbody").append(html);
					return file.previewElement.classList.add("dz-success");
				}
		};
		</script>
        <form class="dropzone" id="myDropzone"><?php if (!empty($parent_id)): ?><input type="hidden" name="parent_id" value="<?=$parent_id?>" /><?php endif; ?></form>
        <?php endif; ?>
	<?php
		$searchBlock = $this->fetch('search');
		if (!$searchBlock):
			$searchBlock = $this->element('admin/search');
		endif;
		echo $searchBlock;

		if ($contentBlock = trim($this->fetch('content'))):
			echo $this->element('admin/search');
			echo $contentBlock;
		else:

			if ($formStart = trim($this->fetch('form-start'))):
				echo $formStart;
			endif;

			if ($mainBlock = trim($this->fetch('main'))):
				echo $mainBlock;
			else:
			?>
			<table class="<?php echo $tableClass; ?>">
			<?php
				echo $tableHeaders;
				echo $tableBody;
				if ($tableFooters):
					echo $tableFooters;
				endif;
			?>
			</table>
			<?php endif; ?>

			<?php if ($bulkAction = trim($this->fetch('bulk-action'))): ?>
			<div class="<?php echo $rowClass; ?>">
				<div id="bulk-action" class="control-group">
					<?php echo $bulkAction; ?>
				</div>
			</div>
			<?php endif; ?>

			<?php
			if ($formEnd = trim($this->fetch('form-end'))):
				echo $formEnd;
			endif;
			?>

		<?php endif; ?>
	</div>
</div>

<div class="<?php echo $rowClass; ?>">
	<div class="<?php echo $columnFull; ?>">
		<?php
		if ($pagingBlock = $this->fetch('paging')):
			echo $pagingBlock;
		else:
			if (isset($this->Paginator) && isset($this->request['paging'])):
				echo $this->element('admin/pagination');
			endif;
		endif;
		?>
	</div>
</div>
<?php

if ($pageFooter = trim($this->fetch('page-footer'))):
	echo $pageFooter;
endif;
