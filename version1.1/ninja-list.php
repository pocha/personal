<?php
include("mysql.php");

	$ninjas = array();
	$result = mysql_query("SELECT * FROM Ninja ORDER BY Rating DESC");
	while ($line = mysql_fetch_assoc($result)){
		$data = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".$line['Id'].""));
		$line['NinjaName'] = $data['Name'];

	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Project_Ninja WHERE NinjaId= ".$line['Id']." AND Status='completed'"));
	$line['completedProjectCount'] = $tmp['count'];
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Project_Ninja WHERE NinjaId= ".$line['Id']." AND Status='open'"));
	$line['liveProjectCount'] = $tmp['count'];

		$ninjas[] = $line;
	}

	include("smarty.php");

	$smarty->assign("ninjas",$ninjas);
        $smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "ninja-list.tpl");


	$smarty->display("main.tpl")
?>
