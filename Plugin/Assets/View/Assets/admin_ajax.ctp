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