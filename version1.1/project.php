<?php
	error_reporting(E_ALL);

	include("mysql.php");

	$project = "";
	$result = mysql_query("SELECT * FROM Project WHERE Id=".mysql_escape_string($_GET['id'])."");

	$project = mysql_fetch_assoc($result);
	$project["Startup"] = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$project['StartupId'].""));
	$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count from Project WHERE StartupId=".$project['StartupId']." AND Status = 'completed'"));
	$project["Startup"]["projectCount"] = $tmp['count'];
	
	$has_review = false;
	$ninja = array();
	$result = mysql_query("SELECT * FROM Project_Ninja WHERE ProjectId = ".mysql_escape_string($_GET['id'])."");
	while ($line = mysql_fetch_assoc($result)){
		$line['Ninja'] = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".$line['NinjaId'].""));
		$tmp = mysql_fetch_assoc(mysql_query("SELECT count(*) as count from Project_Ninja WHERE NinjaId=".$line['NinjaId']." AND Status = 'completed'"));
		$line['Ninja']['projectCount'] = $tmp['count'];
		$ninja[] = $line;

		if ($project["Status"] == "completed" and $line["StartupReview"] and $line['NinjaReview']) $has_review = true ;
	}
	
	//read upload directory
	$files = array();
	if (is_dir('files/'.$_GET['id'] ) and $handle = opendir('files/'.$_GET['id'] )) {

    /* This is the correct way to loop over the directory. */
    while (false !== ($file = readdir($handle))) {
			if ($file != "." and $file != "..") {
				$files[] = array( "path" => "files/".$_GET['id']."/$file", "name" => $file);
			}
    }

    closedir($handle);
	}
	
	include("smarty.php");
	
	$smarty->assign("project",$project);
	$smarty->assign("ninja",$ninja);
	$smarty->assign("has_review",$has_review);
	$smarty->assign("files",$files);

	$smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "project.tpl");
	$smarty->assign("title","Project : ".$project['Heading']);
	

	$smarty->display("main.tpl")
?>
