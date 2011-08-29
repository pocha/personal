<?php
	error_reporting(E_ALL);

	include("mysql.php");
	include("functions.php");

	$projects = array();
	$result = mysql_query("SELECT * FROM Project WHERE Status != 'cancelled' AND Status != 'pending-approval' ORDER BY DateCreated DESC, Id DESC");
	while ($line = mysql_fetch_assoc($result)){
		$data = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$line['StartupId'].""));
		$line['StartupName'] = $data['Name'];
		$projects[] = $line;
	}
	
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Ninja"));
	$ninjaCount = $tmp['count'];
	
	//reviews
	$reviews = array();
	$result = mysql_query("SELECT P.Heading, P.Id, S.Id as StartupId, N.Id as NinjaId, R.StartupReview, R.NinjaReview FROM Project as P JOIN Startup as S ON P.StartupId = S.Id JOIN Taker as T ON T.ProjectId = P.Id JOIN Ninja as N ON T.NinjaId = N.Id RIGHT JOIN Review as R ON P.Id = R.ProjectId WHERE T.Status = 1 AND R.StartupReview IS NOT NULL AND R.StartupReview != '' AND S.PersonName IS NOT NULL AND N.Year IS NOT NULL");
	while ($line = mysql_fetch_assoc($result)) {
		$line['StartUp'] = mysql_fetch_assoc(mysql_query("SELECT Startup.*, COUNT(*) as TotalProjects, SUM(Budget) as TotalWorth FROM Project JOIN Startup ON Project.StartupId = Startup.Id WHERE Project.Status = 'completed' AND Startup.Id = ".$line['StartupId']." GROUP BY Startup.Id"));
		$line['Ninja'] = mysql_fetch_assoc(mysql_query("SELECT Ninja.*, COUNT(*) as TotalProjects, SUM(Budget) as TotalEarned FROM Project JOIN Taker ON Project.Id = Taker.ProjectId JOIN Ninja ON Taker.NinjaId = Ninja.Id WHERE Project.Status = 'completed' AND Taker.Status = 1 AND Ninja.Id = ".$line['NinjaId']." GROUP BY Ninja.Id"));
		list($line['Ninja']['Rating'],$tmp) = RatingFinder($line['Ninja']['Id'],"Startup","Ninja");
		$reviews[] = $line;		
	}
	

	include("smarty.php");

	$sum = mysql_fetch_assoc(mysql_query("SELECT Count(*) as count FROM Project"));
	$sum = $sum['count'];
	$datetime1 = new DateTime('2010-12-18');
	$datetime2 = new DateTime('now');
	$interval = date_diff($datetime2, $datetime1);
	$months = $interval->format("%m");
	$days = $interval->format("%a") - $months * 30;
	if ($days > 31) {
		$days = 0;
		$months++;
	}
	
	$stats = array("Money" => $sum, "Months" => $months, "Days" => $days);
	
	$smarty->assign("stats",$stats);
	$smarty->assign("projects",$projects);
	$smarty->assign("ninjaCount",$ninjaCount);
	//$smarty->assign("top_message", "Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "index.tpl");
	$smarty->assign("title","Stalk Ninja - Remote Internship, Startup Job, PartTime Job, Student Opportunity, Summer Internship, India");	
	
	$smarty->assign("headersecondary","Out of ". (int)($ninjaCount*33.33) ." college students who have attempted <a href='survey-student' target='_blank'>Ninja Challenge</a>, $ninjaCount became Ninjas. Check the list & their skillset <a href='ninja-list.php'>here</a>.");
	
	$smarty->assign("reviews",$reviews);

	$smarty->display("main.tpl")
?>
