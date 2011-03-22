<?php
include("mysql.php");

	$ninjas = array();
	$result = mysql_query("SELECT ROUND(AVG(Review.StartupRating),2) as Rating, COUNT(DISTINCT(Review.Id)) as completedProjectCount, COUNT(DISTINCT(Taker.Id)) as attemptedProjectCount, Ninja.* FROM Ninja LEFT OUTER JOIN Review ON Ninja.Id = Review.NinjaId LEFT OUTER JOIN Taker ON Ninja.Id = Taker.NinjaId LEFT OUTER JOIN Project ON Taker.ProjectId=Project.Id GROUP BY Ninja.Id ORDER BY Rating DESC, completedProjectCount DESC, attemptedProjectCount  DESC");
	while ($line = mysql_fetch_assoc($result)){
		

		$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as Count FROM Taker JOIN Project ON Taker.ProjectId = Project.Id WHERE Project.Status != 'completed' AND Taker.Status = 1 AND Taker.NinjaId=".$line['Id']));
		$line['liveProjectCount'] = $tmp['Count'];

		$ninjas[] = $line;
	}

	include("smarty.php");

	$smarty->assign("ninjas",$ninjas);
        $smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "ninja-list.tpl");


	$smarty->display("main.tpl")
?>
