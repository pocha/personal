<?php
	include("Smarty/libs/Smarty.class.php");
	$smarty = new Smarty;

	$smarty->template_dir = "Smarty/templates";
	$smarty->compile_dir = "Smarty/templates_c";
	$smarty->cache_dir = "Smarty/cache";
	$smarty->config_dir = "Smarty/configs";
	$smarty->compile_check = true;
	//$smarty->debugging = true;


	session_start();
	$logged_in = 0;

	$_SESSION['previous_url'] = $_SERVER['HTTP_REFERER'];
	$_SESSION['url'] = "http://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	
	if(isset($_COOKIE['Id'])) {
		$logged_in = 1;
		if ($logging_necessary == true ) {//send mail for attempts
			//To-do - dump into database
			mail("admin@stalkninja.com","Visitor to ".$_SESSION['url'],$_COOKIE['Id'],$header);	
		}
	}
	else {
		if ($logging_necessary == true ){	//redirect to login page
			header('Location: https://stalkninja.rpxnow.com/openid/v2/signin?token_url=http%3A%2F%2Fstalkninja.com%2Frpx.php');
		}
	}


	$smarty->assign('logged_in', $logged_in);


?>
