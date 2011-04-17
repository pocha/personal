<?php
include("mysql.php");

	$ninjas = array();
	$result = mysql_query("SELECT ROUND(AVG(Review.StartupRating),2) as Rating, AVG(Project.Budget) as Budget, COUNT(DISTINCT(Review.Id)) as completedProjectCount, COUNT(DISTINCT(Taker.Id)) as attemptedProjectCount, Ninja.* FROM Ninja LEFT OUTER JOIN Review ON Ninja.Id = Review.NinjaId LEFT OUTER JOIN Taker ON Ninja.Id = Taker.NinjaId LEFT OUTER JOIN Project ON Taker.ProjectId=Project.Id GROUP BY Ninja.Id ORDER BY Rating DESC, completedProjectCount DESC, attemptedProjectCount  DESC");
	
  while ($line = mysql_fetch_assoc($result)){

		$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as Count FROM Taker JOIN Project ON Taker.ProjectId = Project.Id WHERE Project.Status != 'completed' AND Taker.Status = 1 AND Taker.NinjaId=".$line['Id']));
		$line['liveProjectCount'] = $tmp['Count'];

		//calculate rank
		$line['Points'] = $line['Budget'] * $line['Rating'] * $line['completedProjectCount'] + (($line['Rating']) ? $line['Rating'] * $line['liveProjectCount'] : $line['liveProjectCount']) + $line['attemptedProjectCount'];

		$ninjas[] = $line;
	}

	function cmp($a,$b) {
		if ($a['Points'] == $b['Points'])
			return 0;

		return ($a['Points'] < $b['Points']) ? 1 : -1;
	}

	usort($ninjas,"cmp");
	
	$ninjas[0]['Rank'] = 1;
	for ($i=1; $i < count($ninjas); $i++) {
		if ($ninjas[$i]['Points'] == 0) {
			$ninjas[$i]['Rank'] = "no rank assigned yet";
			continue;
		}
		if ($ninjas[$i]['Points'] < $ninjas[$i-1]['Points'])
			$ninjas[$i]['Rank'] = $ninjas[$i-1]['Rank'] + 1;
		else 
			$ninjas[$i]['Rank'] = $ninjas[$i-1]['Rank'];
	}
		

	include("smarty.php");

	$smarty->assign("ninjas",$ninjas);
  $smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "ninja-list.tpl");


	$smarty->display("main.tpl")
?>
