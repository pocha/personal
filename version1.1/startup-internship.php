<?php
	include("smarty.php");
	$smarty->assign("heading","");
	$smarty->assign("height","1600");
	$smarty->assign("form","https://spreadsheets.google.com/embeddedform?formkey=dG1VME9scTVhWFRiLTVBSUJINVdURXc6MQ");
	$smarty->assign("tpl_name","google-form.tpl");
	$smarty->display("main.tpl");
?>
