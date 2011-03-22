<?php

include("mysql.php");
include ("smarty.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = strip_tags($_POST['name']);
    $email = strip_tags($_POST['email']);
    $title = strip_tags($_POST['title']);

    if (preg_match('/^[a-z0-9\_\-\.A-Z]+@[a-z0-9\_\-\.A-Z]+$/', $email) && preg_match('/^[\w ]+$/', $name)) {
        $query = "insert into startups(Contact) values('" . $name . "\n" . $email . "')";
        mysql_query($query);
        $query = "insert into Project(Heading, Status) values('" . $title . "', '')";
        mysql_query($query);
        $id = mysql_insert_id();
        $token = md5($id . "1rfghgkj");
        $query = "update Project set Token='$token' where Id='$id'";
        mysql_query($query);

        $to = "admin@stalkninja.com, $email";
        $subject = "$title: Submitted at StalkNinja ";
        $header = "From: admin@stalkninja.com\r\n";
        $message = "Name: $name \n Email: $email \n You have registered a project $title at StalkNinja. Click on the link below to
        complete process of floating project \n http://stalkninja.com/float-project.php?token=$token";
        //mail($to, $subject, $message);
        $smarty->assign("successmessage", "Thanks for taking interest in StalkNinja. We have sent a link to your mail id. Use the link to move ahead
            with further process");
    } else {
        $smarty->assign("successmessage", "Please input correct name and email address");
    }
} else {
    
}
$smarty->assign("tpl_name", "register-startup.tpl");
$smarty->display("main.tpl");
?>
