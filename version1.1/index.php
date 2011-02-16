<?php
	error_reporting(E_ALL);

	include("mysql.php");

	$projects = array();
	$result = mysql_query("SELECT * FROM Project ORDER BY DateCreated DESC");
	while ($line = mysql_fetch_assoc($result)){
		$data = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$line['StartupId'].""));
		$line['StartupName'] = $data['Name'];
		$projects[] = $line;
	}
	
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count FROM Ninja"));
	$ninjaCount = $tmp['count'];

	include("smarty.php");
	
	$smarty->assign("projects",$projects);
	$smarty->assign("top_message", isset($_GET['done']) ? "Thanks for submitting. You can reach us at admin@stalkninja.com or 91 95 3838 4545" : "Engage a Ninja (student) for your Startup");
	$smarty->assign("ninjaCount",$ninjaCount);
	//$smarty->assign("top_message", "Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "index.tpl");
	

	$smarty->display("main.tpl")
?>
