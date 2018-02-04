<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php echo Configure::read('Site.title'); ?> | <?php echo $title_for_layout; ?></title>
		<?php

		echo $this->Html->css(array(
			'bootstrap',
			'bootstrap-theme',
			'/croogo/css/reset',
			'font-awesome.min',
			'../slick/slick',
			'../slick/slick-theme',
			'/jquery-ui/jquery-ui.min',
			'styles'
		));
		echo $this->Layout->js();
		echo $this->Html->script(array(
			'/croogo/js/html5',
			'/croogo/js/jquery/jquery-3.2.0.min',
			'/jquery-ui/jquery-ui.min',
			'/croogo/js/jquery/jquery.slug',
			'/croogo/js/jquery/jquery.cookie',
			'/croogo/js/jquery/jquery.hoverIntent.minified',
			'/croogo/js/jquery/superfish',
			'/croogo/js/jquery/supersubs',
			'/croogo/js/jquery/jquery.tipsy',
			'/croogo/js/jquery/jquery.elastic-1.6.1.js',
			'/croogo/js/jquery/thickbox-compressed',
			'/croogo/js/underscore-min',
			'bootstrap.min',
			'../slick/slick.min',
			'theme.js',
		));

		echo $this->fetch('script');
		echo $this->fetch('css');

		?>
	</head>
	<body>

		<?php echo $this->Layout->sessionFlash(); ?>
		<?php echo $this->fetch('content'); ?>

		<?php
			echo $this->Blocks->get('scriptBottom');
			echo $this->Js->writeBuffer();
		?>
	</body>
</html>