<?php
	
	error_reporting(E_ALL);
	
	include("Smarty/libs/Smarty.class.php");
	$smarty = new Smarty;

	$smarty->template_dir = "Smarty/templates";
	$smarty->compile_dir = "Smarty/templates_c";
	$smarty->cache_dir = "Smarty/cache";
	$smarty->config_dir = "Smarty/configs";
	$smarty->compile_check = true;
	
	$smarty->assign("headermain","Login to view the page");
	$smarty->assign("tpl_name","pre-login.tpl");
	$smarty->display("main.tpl");
?>
