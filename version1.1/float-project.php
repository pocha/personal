<?php
	
	$error = false;
	$message = "";
	$data = array();
			
	include("mysql.php");
	include ("smarty.php");
	
	//check if project is not open anymore
	if ( !isset($_GET['id']) or ( $data = mysql_fetch_assoc(mysql_query("SELECT * FROM Project WHERE Id=".$_GET['id'])) and $data['Status'] and $data['Status'] != "open" ) ){
		$smarty->assign("error",true);
		$smarty->assign("message","This project editing is not allowed");
		$smarty->assign("tpl_name","error.tpl");
		$smarty->display("main.tpl");
		exit;
	}

	if (count($_POST) > 0) { //save the data
		
		$update_param = array();
		foreach ($_POST as $key=>$value) {
			if ($value) {
				$update_param[] = "$key='".mysql_real_escape_string($value)."'";
			}
			else {
				$update_param[] = "$key = NULL";
			}
		}
		
//		var_dump($update_param);

		if (mysql_query("UPDATE Project SET ".join(",",$update_param)." WHERE Id=".$_GET['id'])) {
			$message = "The project is submitted. It would be reviewed by Ashish/Gaurav. You would be intimated by email when the project goes live or if there are any issues with it. Expect our reverting back within 24 hours. You are free to update the project content anytime you like to, before it goes live.";
		}
		else {
			$error = true;
			$message =  "Data can not be updated";
		}

		$data = $_POST;
	}

	$smarty->assign("data",$data);
	$smarty->assign("error",$error);
	$smarty->assign("message",$message);
	$smarty->assign("tpl_name","float-project.tpl");
	$smarty->display("main.tpl");
?>
