<?php

include ("smarty.php");

$smarty->assign("tpl_name", "tnc.tpl");
$smarty->assign("headermain", "Terms & Conditions");
$smarty->display("main.tpl");
	
?>
