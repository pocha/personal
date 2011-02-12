<?php
	include("Smarty/libs/Smarty.class.php");
	$smarty = new Smarty;

	$smarty->template_dir = "Smarty/templates";
	$smarty->compile_dir = "Smarty/templates_c";
	$smarty->cache_dir = "Smarty/cache";
	$smarty->config_dir = "Smarty/configs";
	$smarty->compile_check = true;
	//$smarty->debugging = true;

?>
