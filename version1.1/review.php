<?php
	error_reporting(E_ALL);

	include_once("mysql.php");
	include_once("functions.php");

	//Get reviews
	$reviews = array();
	$result = mysql_query("SELECT P.Heading, P.Id, S.Id as StartupId, N.Id as NinjaId, R.StartupReview, R.NinjaReview FROM Project as P JOIN Startup as S ON P.StartupId = S.Id JOIN Taker as T ON T.ProjectId = P.Id JOIN Ninja as N ON T.NinjaId = N.Id RIGHT JOIN Review as R ON P.Id = R.ProjectId WHERE T.Status = 1 AND R.StartupReview IS NOT NULL AND R.StartupReview != '' AND S.PersonName IS NOT NULL AND N.Year IS NOT NULL");
	while ($line = mysql_fetch_assoc($result)) {
		$line['StartUp'] = mysql_fetch_assoc(mysql_query("SELECT Startup.*, COUNT(*) as TotalProjects, SUM(Budget) as TotalWorth FROM Project JOIN Startup ON Project.StartupId = Startup.Id WHERE Project.Status = 'completed' AND Startup.Id = ".$line['StartupId']." GROUP BY Startup.Id"));
		$line['Ninja'] = mysql_fetch_assoc(mysql_query("SELECT Ninja.*, COUNT(*) as TotalProjects, SUM(Budget) as TotalEarned FROM Project JOIN Taker ON Project.Id = Taker.ProjectId JOIN Ninja ON Taker.NinjaId = Ninja.Id WHERE Project.Status = 'completed' AND Taker.Status = 1 AND Ninja.Id = ".$line['NinjaId']." GROUP BY Ninja.Id"));
		list($line['Ninja']['Rating'],$tmp) = RatingFinder($line['Ninja']['Id'],"Startup","Ninja");
		$reviews[] = $line;		
	}

	//var_dump($reviews); exit;

	include("smarty.php");
	$smarty->assign("reviews",$reviews);

	$smarty->assign("tpl_name","review.tpl");
	$smarty->display("main.tpl");

