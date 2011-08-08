<?php

include ("smarty.php");

$smarty->assign("tpl_name", "privacy.tpl");
$smarty->assign("headermain", "Stalk Ninja privacy policy");
$smarty->display("main.tpl");
	
?>