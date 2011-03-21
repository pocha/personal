<?php
	error_reporting(E_ALL);

	include("mysql.php");
	include("functions.php");

	$id = mysql_escape_string($_GET['id']);

	$project = "";
	$result = mysql_query("SELECT * FROM Project WHERE Id=$id");

	$project = mysql_fetch_assoc($result);
	$project["Startup"] = mysql_fetch_assoc(mysql_query("SELECT * FROM Startup WHERE Id=".$project['StartupId'].""));
	list($project['Startup']['Rating'], $project['Startup']['projectCount']) = RatingFinder($project['StartupId'],"Ninja","Startup");
	
		
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

	//calculate takers
	$takers = array();
	$result = mysql_query("SELECT * FROM Taker WHERE ProjectId = $id");
	while ($line = mysql_fetch_assoc($result)){
		$line['Ninja'] = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".$line['NinjaId']));

		//completed project count of the Ninja
		list($line['Ninja']['Rating'], $line['Ninja']['projectCount']) = RatingFinder($line['NinjaId'],"Startup","Ninja");
		
		$takers[] = $line;
	}

	//show reviews if available
	$reviews = array();
	$result = mysql_query("SELECT * FROM Review WHERE ProjectId=$id");
	while ($line = mysql_fetch_assoc($result)) {
		
		//Ninja details
		$line['Ninja'] = mysql_fetch_assoc(mysql_query("SELECT * FROM Ninja WHERE Id=".$line['NinjaId']));

		$reviews[] = $line;
	}
	
	include("smarty.php");
	
	$smarty->assign("project",$project);
	$smarty->assign("takers",$takers);
	$smarty->assign("reviews",$reviews);
	$smarty->assign("files",$files);

	$smarty->assign("top_message","Engage a Ninja (student) for your Startup");
	$smarty->assign("tpl_name", "project.tpl");
	$smarty->assign("title","Project : ".$project['Heading']);
	

	$smarty->display("main.tpl")
?>
