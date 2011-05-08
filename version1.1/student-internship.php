<?php
	include("smarty.php");
	$smarty->assign("heading","");
	$smarty->assign("height","1500");
	$smarty->assign("form","https://spreadsheets.google.com/embeddedform?formkey=dDE4dm5RYlhqa1E2d0tQN2RTWnNaTmc6MQ");
	$smarty->assign("tpl_name","google-form.tpl");
	$smarty->display("main.tpl");
?>
