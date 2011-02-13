<?php

include("mysql.php");
$tablename = "startup" ;

$keys = ""; $values = "";
	foreach ($_POST as $key => $value) {
		$keys[] = "$key";
		$values[] = "'".mysql_real_escape_string($value)."'";	
	}

	/*$keys[] = "date_time"; $values[] = date(dmy).time();*/

$stmt = "INSERT INTO $tablename (".join(",",$keys).") VALUES (".join(",",$values).")" ;
mysql_query($stmt);
//echo $stmt;

$to = "admin@stalkninja.com, gaurav@cofoundersgyan.com";
$subject = "Start-up data entered at stalkninja";
/*$message = "$tablename (".join(",",$values).")";*/
$message= $message.var_export($_POST,true);
$from = "sgaurav.baghel@gmail.com";
$headers = "From: admin@stalkninja.com\r\n";
mail($to,$subject,$message,$headers);
mysql_close($link);
header("Location: index.php?done=1");
?>
