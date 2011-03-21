<?php
	error_reporting(E_ALL);

	include("mysql.php");
	include("functions.php");
	
	$ninja = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".mysql_escape_string($_GET['id']).""));
	list($ninja['Rating'],$ninja['completedProjectCount']) = RatingFinder($ninja['Id'],"Startup","Ninja");
	
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as Count FROM Taker WHERE NinjaId=".$ninja['Id']));
	$ninja['attemptedProjectCount'] = $tmp['Count'];

	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as Count FROM Taker JOIN Project ON Taker.Projectid = Project.Id WHERE Project.Status != 'completed' AND Taker.Status = 0 AND Taker.NinjaId=".$ninja['Id']));
	$ninja['liveProjectCount'] = $tmp['Count'];
	


	$projects = array();
	$result = mysql_query("SELECT * FROM Project JOIN Review ON Project.Id = Review.ProjectId WHERE Review.NinjaId=".mysql_escape_string($_GET['id'])."");

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
