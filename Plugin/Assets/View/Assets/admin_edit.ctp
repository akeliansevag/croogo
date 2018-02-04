<?php
echo $this->Html->css("Assets.assets.css");
?>
<?php
	echo $this->Form->create("Assets.Asset");
	echo $this->Form->input("Asset.id",array(
		"type"=>"hidden",
		"value"=>$asset['Asset']['id']
	));
	foreach($editFields as $field => $opts){
		echo $this->Form->input($field, $opts);
	}

	echo $this->Form->end("Save",array(
	));
?>