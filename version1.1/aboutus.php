<?php

include ("smarty.php");

$smarty->assign("tpl_name", "aboutus.tpl");
$smarty->assign("headermain", "The story so far ..");
$smarty->display("main.tpl");
	
?>
