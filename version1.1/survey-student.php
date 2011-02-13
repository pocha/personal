<?php

include("mysql.php");
$tablename = "student" ;

$keys = ""; $values = "";
	foreach ($_POST as $key => $value) {
		$keys[] = "$key";
		$values[] = "'".mysql_real_escape_string($value)."'";	
	}

	/*$keys[] = "date_time"; $values[] = date(dmy).time();*/

$stmt = "INSERT INTO $tablename (".join(",",$keys).") VALUES (".join(",",$values).")" ;
mysql_query($stmt) or die(mysql_error());
//echo $stmt;

$to = "admin@stalkninja.com, gaurav@cofoundersgyan.com";
$subject = "Student data entered at StalkNinja";
/*$message = "$tablename (".join(",",$values).")";*/
$message= $message.var_export($_POST,true);
$from = "sgaurav.baghel@gmail.com";
$headers = "Student data entered at stalkninja";
mail($to,$subject,$message,$headers);	
header("Location: index.php?done=1");

?>
