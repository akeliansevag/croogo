<?php
echo $this->Html->css("Assets.dropzone.css");
echo $this->Html->script("Assets.dropzone.js");
echo $this->Html->css("Assets.assets.css");
?>

<?php
	echo $this->Form->create(false,array(
		"type"=>"file",
		"url"=>array(
			"admin"=>true,
			"plugin"=>"assets",
			"controller"=>"assets",
			"action"=>"file"
		),
		"id"=>"assetsUploader",
		"class"=>"dropzone"
	));

	echo $this->Form->input("row_id",array(
		"type"=>"hidden",
		"value"=>$id
	));

	echo $this->Form->input("model",array(
		"type"=>"hidden",
		"value"=>$model
	));

	echo $this->Form->end();
	
?>

<div class="assets-table">
	<table>
	<tr>
		<?php foreach($displayFields as $key=>$field):?>
			<th><?php echo ucwords($key);?></th>
		<?php endforeach;?>
			<th class="actions">Actions</th>
	</tr>
	<?php foreach($assets as $asset): ?>
		<tr>
			<?php foreach($displayFields as $key=>$field):?>
				<td>

					<?php
						$value = $asset['Asset'][$key];
						if($key=="attachment"){
							
							$mime_type = $asset['Asset']['mime_type'];
							$type = $this->Assets->checkType($mime_type);
							$extension = $this->Assets->checkExtension($mime_type);
							if($type=="image"){
								echo $this->Image->resize(
									$value,
									100,
									75,
									array(
										"cacheDir"=>"resized",
										'uploadsDir'=> "assets"
									)
								);
							}else{
								echo $this->Html->link(
									$value,
									"../../".$value,
									array(
										"target"=>"_blank"
									)
								);
							}
						}else if($key=="size"){
							echo (number_format($value/1024,2))." KB";
						}else{
							echo $asset['Asset'][$key];
						}
					?>
					

				</td>
			<?php endforeach;?>
				<td>
					<?php
						echo $this->Html->link(
							"edit",
							array(
								"admin"=>true,
								"plugin"=>"assets",
								"controller"=>"assets",
								"action"=>"edit",
								$asset['Asset']['id'],
								$model,
								$id
							)
						);
					?>
					|
					<?php
						echo $this->Html->link(
							"delete",
							array(
								"action"=>"remove",
								$asset['Asset']['id'],
								$model,
								$id
							),
							array(
								"confirm"=>"Are you sure you want to delete this asset?"
							)
						);
					?>
				</td>
		</tr>

	<?php endforeach;?>
	</table>
</div><!--assets-table-->

<script type="text/javascript">
	$(document).ready(function(){
		
		Dropzone.options.assetsUploader = {
			init: function() {
		     this.on("success", function(file,response) { 
		  			$.ajax({
		     			type: "post",
		     			url: Croogo.basePath + "admin/assets/assets/ajax",
		     			data: {id: "<?= $id?>", model: "<?=$model?>"},
		     			success: function(msg){
		     				
		     				$(".assets-table").html(msg).css("opacity","1");

		     			}
		     		});
		     });

		     this.on("addedfile",function(event){
		     		$(".assets-table").css("opacity","0.5");
		     });
		    }
		} 
	});
</script>
