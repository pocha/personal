<?php
	
	$error = false;
	$message = "";

	if (isset($_POST['Email']) and $_POST['Email']) {
			$email = "'".mysql_escape_string($_POST['Email'])."'";
			$username = "'".mysql_escape_string($_POST['UserName'])."'";

			//echo $email;	
			include("mysql.php");
			if (!$result = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Email=$email"))) {
				$error = true;
				$message = "The email address is not found";
			}
			elseif (mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE UserName=$username AND Email != $email"))){
				$error = true;
				$message = "Username already taken. Select a different username";
			}
			else {
				$update_param = array();
				foreach ($_POST as $key=>$value) {
					if ($key != "Image") {
						$update_param[] = "$key='".mysql_real_escape_string($value)."'";
					}
				}

				if (mysql_query("UPDATE Ninja SET ".join(",",$update_param)." WHERE Email=$email")) {
					$message = "Successfully updated data";
				}
				else {
					$error = true;
					$message =  "Data can not be updated";
				}
			}
	}

	include ("smarty.php");
	$smarty->assign("data",$_POST);
	$smarty->assign("error",$error);
	$smarty->assign("message",$message);
	$smarty->assign("tpl_name","ninja-profile.tpl");
	$smarty->display("main.tpl");
?>
