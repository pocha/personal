<?php

include ("smarty.php");

$smarty->assign("tpl_name", "privacy.tpl");
$smarty->assign("headermain", "We respect your privacy");
$smarty->display("main.tpl");
	
?>
