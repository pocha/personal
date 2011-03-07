<?php



 include("mysql.php");

	$projects = array();
	$result = mysql_query("SELECT * FROM Project ORDER BY DateCreated DESC");
	while ($line = mysql_fetch_assoc($result)){
		$data = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$line['StartupId'].""));
		$line['StartupName'] = $data['Name'];
		$projects[] = $line;
	}

 include ("smarty.php");
 $smarty->assign("tpl_name","survey-student.tpl");
 $smarty->assign("projects",$projects);
 $smarty->display("main.tpl");

?>
