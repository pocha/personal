<?php
	error_reporting(E_ALL);

	include("mysql.php");
	
	$ninja = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".mysql_escape_string($_GET['id']).""));
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Project_Ninja WHERE NinjaId= ".$_GET['id']." AND Status='completed'"));
	$ninja['completedProjectCount'] = $tmp['count'];
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Project_Ninja WHERE NinjaId= ".$_GET['id']." AND Status='in-progress'"));
	$ninja['liveProjectCount'] = $tmp['count'];


	$projects = array();
	$result = mysql_query("SELECT * FROM Project JOIN Project_Ninja ON Project.Id = Project_Ninja.ProjectId WHERE Project_Ninja.NinjaId=".mysql_escape_string($_GET['id'])."");

	while ($line = mysql_fetch_assoc($result)){
		
		$line['Startup'] = mysql_fetch_assoc(mysql_query("SELECT * from Startup WHERE Id=".$line['StartupId']));
		$projects[] = $line;
	}

	
	include("smarty.php");
	
	$smarty->assign("ninja",$ninja);
	$smarty->assign("projects",$projects);

	$smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "ninja.tpl");
	$smarty->assign("title","Ninja Profile: ".$ninja['Name']);
	

	$smarty->display("main.tpl")
?>
