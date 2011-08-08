<?php

include ("smarty.php");

$smarty->assign("tpl_name", "faq.tpl");
$smarty->assign("headermain", "Frequently Asked Questions");
$smarty->display("main.tpl");
	
?>