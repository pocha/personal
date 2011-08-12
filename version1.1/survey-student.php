<?php


 $logging_necessary = true;
 include ("smarty.php");
 include("mysql.php");

	$projects = array();
	$result = mysql_query("SELECT * FROM Project WHERE Status != 'under-moderation' AND Status != 'pending-approval' AND Status != 'cancelled' ORDER BY DateCreated DESC");
	while ($line = mysql_fetch_assoc($result)){
		$data = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$line['StartupId'].""));
		$line['StartupName'] = $data['Name'];
		$projects[] = $line;
	}

 $smarty->assign("tpl_name","survey-student.tpl");
 $smarty->assign("projects",$projects);
 $smarty->display("main.tpl");

?>
