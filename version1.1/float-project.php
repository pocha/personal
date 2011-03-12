<?php
	
	$error = false;
	$message = "";
	$data = array();
			
	include("mysql.php");
	include ("smarty.php");
	
	$dir = "files/".$_GET['id'];

	//check if project is not open anymore
	if ( !isset($_GET['id']) or ( $data = mysql_fetch_assoc(mysql_query("SELECT * FROM Project WHERE Id=".$_GET['id'])) and $data['Status'] and $data['Status'] != "open" ) ){
		$smarty->assign("error",true);
		$smarty->assign("message","This project editing is not allowed");
		$smarty->assign("tpl_name","error.tpl");
		$smarty->display("main.tpl");
		exit;
	}

	if (count($_POST) > 0) { //save the data
	
		$message=var_export($_POST, TRUE);
		$to="admin@stalkninja.com";
		$subject="Project udpadated ";
		$header="From: admin@stalkninja.com\r\n";
		mail($to, $subject, $message);

		
		//put upload data
		if (!is_dir($dir)) {
			mkdir($dir);
		}
		
		//delete all marked files
		foreach ($_POST as $key=>$value) {
			if (preg_match("/delete-(.*)/",$key,$match)) {
				//echo $key; echo $value;
				if ($value == "on") {
					$file = preg_replace("/_(\w*)$/",".$1",$match[1]); 
					//echo $file;
					@unlink($dir."/".$file);
				}
				unset($_POST[$key]);
			}
		}

		//upload new files
		foreach ($_FILES as $name=>$file){
				//var_dump($name); var_dump($file);
				move_uploaded_file($file["tmp_name"],$dir."/".$file["name"]);
				unset($_POST[$name]);
		}

		
		$update_param = array();
		foreach ($_POST as $key=>$value) {
			if ($key != "Contact") {
				if ($value) {
					$update_param[] = "$key='".mysql_real_escape_string($value)."'";
				}
				else {
					$update_param[] = "$key = NULL";
				}
			}
		}
		
//		var_dump($update_param);
		
		$query = "UPDATE Project SET ".join(",",$update_param)." WHERE Id=".$_GET['id'];
		//var_dump($query);
		if (mysql_query($query)) {
				$message = "The project is submitted. It would be reviewed by Ashish/Gaurav & either of them will get back in touch with you with the status within 24 hours. You are free to update the project content anytime you like to, before it goes live.";
		}
		else {
			$error = true;
			$message =  mysql_error();
		}

		$data = $_POST;
	}
	
		//read all uploaded files & show them for deleting
		$files = array();
		if (is_dir($dir) and $handle = opendir($dir)) {

			/* This is the correct way to loop over the directory. */
			while (false !== ($file = readdir($handle))) {
				if ($file != "." and $file != "..") {
					$files[] = $file;
				}
			}
			closedir($handle);
		}
		$smarty->assign("files",$files);


	$smarty->assign("data",$data);
	$smarty->assign("error",$error);
	$smarty->assign("message",$message);
	$smarty->assign("tpl_name","float-project.tpl");
	$smarty->display("main.tpl");
?>
