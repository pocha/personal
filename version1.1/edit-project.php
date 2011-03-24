<?php

$error = false;
$message = "";
$data = array();

include("mysql.php");
include ("smarty.php");

$title = strip_tags($_POST['Heading']);
	

    if (!isset($_GET['token']) || $_GET['token'] == NULL) {
        $smarty->assign("error", true);
        $smarty->assign("message", "This project editing is not allowed");
        $smarty->assign("tpl_name", "error.tpl");
        $smarty->display("main.tpl");
        exit;
    }

    $token = mysql_escape_string($_GET['token']);
    $query = "select count(*) as count from Project where Token='" . $token . "'";
    $data1 = mysql_fetch_assoc(mysql_query($query));


    if ($data1['count'] != 1) {
        $smarty->assign("error", true);
        $smarty->assign("message", "This project editing is not allowed");
        $smarty->assign("tpl_name", "error.tpl");
        $smarty->display("main.tpl");
        exit;
    }


    $query = "select Id from Project where token='" . mysql_real_escape_string($_GET['token']) . "'";
    $data2 = mysql_fetch_assoc(mysql_query($query));
    $id = $data2['Id'];



    $dir = "files/" . $id;

//check if project is not open anymore
    if (( $data = mysql_fetch_assoc(mysql_query("SELECT * FROM Project WHERE Id=$id")) and $data['Status'] and $data['Status'] != "open" and $data['Status'] != "under-moderation" and $data['Status'] != "pending-approval")) {
        $smarty->assign("error", true);
        $smarty->assign("message", "This project editing is not allowed");
        $smarty->assign("tpl_name", "error.tpl");
        $smarty->display("main.tpl");
        exit;
    }

// data from Startup table
    /* $startup_fid = $data['StartupId'];
      $startup_data = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=$startup_fid"));
      $name = $startup_data['Name'];
      $email = $startup_data['Email'];
      $contact = $startup_data['Phone']; */

    $title = $data['Heading'];

    if (count($_POST) > 0) { //save the data
        $message = var_export($_POST, TRUE);
        $to = "admin@stalkninja.com";
        $subject = "Project updated ";
        $header = "From: admin@stalkninja.com\r\n";
       // mail($to, $subject, $message);
        
        //put upload data
        if (!is_dir($dir)) {
            mkdir($dir);
        }

        //delete all marked files
        foreach ($_POST as $key => $value) {
            if (preg_match("/delete-(.*)/", $key, $match)) {
                //echo $key; echo $value;
                if ($value == "on") {
                    $file = preg_replace("/_(\w*)$/", ".$1", $match[1]);
                    //echo $file;
                    @unlink($dir . "/" . $file);
                }
                unset($_POST[$key]);
            }
        }

        //upload new files
        foreach ($_FILES as $name => $file) {
            //var_dump($name); var_dump($file);
            move_uploaded_file($file["tmp_name"], $dir . "/" . $file["name"]);
            unset($_POST[$name]);
        }


        $update_param = array();
        foreach ($_POST as $key => $value) {
            if ($key != "name" AND $key != "email" AND $key != "contact") {
                if ($value) {
                    $update_param[] = "$key='" . mysql_real_escape_string($value) . "'";
                } else {
                    $update_param[] = "$key = NULL";
                }
            }
        }
		
		if ($data['Status'] == "open") {
        $update_param[] = "Status = 'open'";
		}
		else
		{
		if ($data['Status'] == "under-moderation"){
		$update_param[] = "Status='under-moderation'";
		}
		else{
		$update_param[] = "Status ='pending-approval'";
		}
		}

//		var_dump($update_param);

        $query = "UPDATE Project SET " . join(",", $update_param) . " WHERE Id=$id";
        //var_dump($query);
        if (mysql_query($query)) {
            $message = "Your Project is <a target='_blank' href = \"http://stalkninja.com/project.php?id=$id\">Updated</a>. Make sure that you subscribe to Disqus board and keep cheking for comments by Ninja's. <br/> <a href = \"http://stalkninja.com/float-project.php\">Float another project</a>";
        } else {
            $error = true;
            $message = mysql_error();
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
// Edit heading and disable Startup data fields in form.
    $smarty->assign("heading", "Edit Project: $title");
    $smarty->assign("top", "none");
    



$smarty->assign("files", $files);
$smarty->assign("data", $data);
$smarty->assign("error", $error);
$smarty->assign("message", $message);
$smarty->assign("tpl_name", "edit-project.tpl");
$smarty->display("main.tpl");
?>
