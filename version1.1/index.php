<?php
	error_reporting(E_ALL);

	include("mysql.php");

	$projects = array();
	$result = mysql_query("SELECT * FROM Project WHERE Status != 'cancelled' ORDER BY DateCreated DESC");
	while ($line = mysql_fetch_assoc($result)){
		$data = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$line['StartupId'].""));
		$line['StartupName'] = $data['Name'];
		$projects[] = $line;
	}
	
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Ninja"));
	$ninjaCount = $tmp['count'];

	include("smarty.php");
	
	$sum = mysql_fetch_assoc(mysql_query("SELECT Count(*) as count FROM Project"));
	$sum = $sum['count'];
	$datetime1 = new DateTime('2010-12-18');
	$datetime2 = new DateTime('now');
	$interval = date_diff($datetime2, $datetime1);
	$months = $interval->format("%m");
	$days = $interval->format("%a") - $months * 30;
	
	$stats = array("Money" => $sum, "Months" => $months, "Days" => $days);
	
	$smarty->assign("stats",$stats);
	$smarty->assign("projects",$projects);
	$smarty->assign("ninjaCount",$ninjaCount);
	//$smarty->assign("top_message", "Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "index.tpl");
	$smarty->assign("title","Stalk Ninja - Remote Internship, Startup Job, PartTime Job, Student Opportunity, Summer Internship, India");	
	
	$smarty->assign("headersecondary","Out of ". (int)($ninjaCount*33.33) ." college students who have attempted <a href='survey-student' target='_blank'>Ninja Challenge</a>, $ninjaCount became Ninjas. Check the list & their skillset <a href='ninja-list.php'>here</a>.");

	$smarty->display("main.tpl")
?>
