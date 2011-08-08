<?php
	error_reporting(E_ALL);

	include("mysql.php");
	include("functions.php");
	
	$startup = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".mysql_escape_string($_GET['id']).""));
	list($startup['Rating'],$startup['completedProjectCount']) = RatingFinder($startup['Id'],"Ninja","Startup");
	
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Project WHERE StartupId= ".$_GET['id']." AND Status = 'open'"));
	$startup['liveProjectCount'] = $tmp['count'];


	$projects = array();
	$result = mysql_query("SELECT * FROM Project WHERE StartupId=".mysql_escape_string($_GET['id'])."");

	while ($line = mysql_fetch_assoc($result)){
		$result1 = mysql_query("SELECT * FROM Review WHERE ProjectId = ".$line['Id']."");
		while ($line1 = mysql_fetch_assoc($result1)) {
			$line1['Ninja'] = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".$line1['NinjaId']));
			$line['Ninja'][] = $line1;
		}
		$projects[] = $line;
	}

	
	include("smarty.php");
	
	$smarty->assign("startup",$startup);
	$smarty->assign("projects",$projects);

	$smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "startup.tpl");
	$smarty->assign("title","Startup Profile: ".$startup['Name']);
	$smarty->assign("headermain","Startup Profile : ".$startup['Name']);
		

	$smarty->display("main.tpl")
?>
