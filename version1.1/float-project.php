<?php

$error = false;
$message = "";
$data = array();

include("mysql.php");
include ("smarty.php");
require_once("captcha/recaptchalib.php");
$publicKey="6Lcou8ISAAAAAHSaXUUFn11YTZVSjH_T1y6NMFEO";
$privateKey="6Lcou8ISAAAAAM-TvOhSc2xnEpFFuXncnjsZGJkx";

$smarty->assign("Captcha", recaptcha_get_html($publicKey));


if($_SERVER['REQUEST_METHOD'] == 'POST')
{
  $resp = recaptcha_check_answer ($privateKey,
                                $_SERVER["REMOTE_ADDR"],
                                $_POST["recaptcha_challenge_field"],
                                $_POST["recaptcha_response_field"]);

  if (!$resp->is_valid) {
    // What happens when the CAPTCHA was entered incorrectly

    $smarty->assign("error", true);
    $smarty->assign("data", $_POST);
        $smarty->assign("message", "The reCAPTCHA wasn't entered correctly."."reCAPTCHA : ( " . $resp->error . ")");
        $smarty->assign("tpl_name", "float-project.tpl");
        $smarty->display("main.tpl");
        $data = $_POST;
		exit;	
		
    //die ("The reCAPTCHA wasn't entered correctly. Go back and try it again." ."(reCAPTCHA said: " . $resp->error . ")");
  }
}

if ($_GET['token'] == NULL) {

    $name = strip_tags($_POST['name']);
    $email = strip_tags($_POST['email']);
    $contact = strip_tags($_POST['contact']);
    $title = strip_tags($_POST['title']);


    $query = "select count(*) as count from Startup where Email='" . $email . "'";
    $data4 = (mysql_fetch_assoc(mysql_query($query)));
    $query = "select Id from Startup where Email='" . $email . "'";
    $data5 = (mysql_fetch_assoc(mysql_query($query)));


    if ($data4['count'] != 1) {
       
        if (preg_match('/^[a-z0-9\_\-\.A-Z]+@[a-z0-9\_\-\.A-Z]+$/', $email) && preg_match('/^[\w ]+$/', $name)) {
        $query = "INSERT INTO Startup(Name, Email, Phone, RegisteredOn) values('$name', '$email', '$contact', now())";
        mysql_query($query);
        $startup_id = mysql_insert_id();
        $query = "insert into Project(Heading, Status) values('" . $title . "', '')";
        mysql_query($query);
        $id = mysql_insert_id();
        $token = md5($id . "1rfghgkj");
        $query = "update Project set Token='$token' where Id='$id'";
        mysql_query($query);
    } else {
        }
    }

    else{
        $startup_id = $data5['Id'];
        $query = "insert into Project(Heading, Status) values('" . $title . "', '')";
        mysql_query($query);
        $id = mysql_insert_id();
        $token = md5($id . "1rfghgkj");
        $query = "update Project set Token='$token' where Id='$id'";
        mysql_query($query);
    }

//code without email check
   /*
    if (preg_match('/^[a-z0-9\_\-\.A-Z]+@[a-z0-9\_\-\.A-Z]+$/', $email) && preg_match('/^[\w ]+$/', $name)) {
        $query = "INSERT INTO Startup(Name, Email, Phone, RegisteredOn) values('$name', '$email', '$contact', now())";
        mysql_query($query);
        $startup_id = mysql_insert_id();
        $query = "insert into Project(Heading, Status) values('" . $title . "', '')";
        mysql_query($query);
        $id = mysql_insert_id();
        $token = md5($id . "1rfghgkj");
        $query = "update Project set Token='$token' where Id='$id'";
        mysql_query($query);
    } else {
        
    }
*/
    $dir = "files/" . $id;

    if (count($_POST) > 0) { //save the data
        $to = "admin@stalkninja.com, $email";
        $subject = "$title: Submitted at StalkNinja ";
        $header = "From: admin@stalkninja.com\r\n";
        $message = "Name: $name \n Email: $email \n Thanks for submitting Project $title at StalkNinja. Use the link
                below to edit project whenever you need. \n http://stalkninja.com/float-project.php?token=$token";
        //mail($to, $subject, $message);
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
            if ($key != "name" AND $key != "email" AND $key != "contact" AND $key != "recaptcha_challenge_field" AND $key !="recaptcha_response_field") {
                if ($value) {
                    $update_param[] = "$key='" . mysql_real_escape_string($value) . "'";
                } else {
                    $update_param[] = "$key = NULL";
                }
            }
        }
        $update_param[] = "Status='Open'";
        $update_param[] = "DateCreated='" . date("Y-m-d") . "'";
        $update_param[] = "StartupId='$startup_id'";
        //var_dump($update_param);

        $query = "UPDATE Project SET " . join(",", $update_param) . " WHERE Id=" . $id;
        //var_dump($query);
        //echo($id);
        if (mysql_query($query)) {
            $message = "Congrats, your Project is <a href = \" http://stalkninja.com/project.php?id=$id \">Live!</a> You are free to <a href = \"http://stalkninja.com/float-project.php?token=$token\">edit</a> the project any number of times but deliverables must not change. We have mailed you link to edit your project. <br/> Float another project";
        } else {
            $error = true;
            $message = mysql_error();

        }

        $data = "";
    }

    $smarty->assign("heading", "Float Project");
}

else {

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
    if (( $data = mysql_fetch_assoc(mysql_query("SELECT * FROM Project WHERE Id=$id")) and $data['Status'] and $data['Status'] != "open")) {
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
        //mail($to, $subject, $message);
        
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
            if ($key != "name" AND $key != "email" AND $key != "contact" AND $key != "recaptcha_challenge_field" AND $key !="recaptcha_response_field") {
                if ($value) {
                    $update_param[] = "$key='" . mysql_real_escape_string($value) . "'";
                } else {
                    $update_param[] = "$key = NULL";
                }
            }
        }
        $update_param[] = "Status='Open'";

//		var_dump($update_param);

        $query = "UPDATE Project SET " . join(",", $update_param) . " WHERE Id=$id";
        //var_dump($query);
        if (mysql_query($query)) {
            $message = "Your Project is <a href = \"http://stalkninja.com/project.php?id=$id\">Updated</a>. Make sure that you subscribe to Disqus board and keep cheking for comments by Ninja's. <br/> <a href = \"http://stalkninja.com/float-project.php\">Float another project</a>";
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
    
}


$smarty->assign("files", $files);
$smarty->assign("data", $data);
$smarty->assign("error", $error);
$smarty->assign("message", $message);
$smarty->assign("tpl_name", "float-project.tpl");
$smarty->display("main.tpl");
?>
