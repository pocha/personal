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
	
	$sum = mysql_fetch_assoc(mysql_query("SELECT SUM(Budget) as Sum FROM Project"));
	$sum = number_format($sum['Sum'] * 1.15);
	$datetime1 = new DateTime('2010-12-18');
	$datetime2 = new DateTime('now');
	$interval = date_diff($datetime2, $datetime1);
	$months = $interval->format("%m");
	$days = $interval->format("%a") - $months * 30;
	$stats = array("Money" => $sum, "Months" => $months, "Days" => $days);
	
	$smarty->assign("stats",$stats);	
	$smarty->assign("projects",$projects);
	$smarty->assign("top_message", isset($_GET['done']) ? "Thanks for submitting. You can reach us at admin@stalkninja.com or 91 95 3838 4545" : "Engage a Ninja (student) for your Startup");
	$smarty->assign("ninjaCount",$ninjaCount);
	//$smarty->assign("top_message", "Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "index.tpl");
	$smarty->assign("title","Stalk Ninja - Remote Internship, Startup Job, PartTime Job, Student Opportunity, Summer Internship, India");	

	$smarty->display("main.tpl")
?>
