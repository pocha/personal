<html>
<head>
</head>
<body>
<?php
	$file = fopen("data.txt", "r") or die("Unable to open file!");
	$x = array();
	$y = array();
	while(!feof($file)) {
		$line = fgets($file);
		if (!empty($line) && trim($line)) {
			$a = explode(',', $line);
			array_push($x, trim($a[0]));
			array_push($y, trim($a[1]));
		}
  	}
	fclose($file);
	$xval = implode(",", $x);
	$yval = implode(",", $y);
	$chart_link = "http://chart.apis.google.com/chart?chxt=x,y&chs=440x220&cht=lxy&chd=t:".$xval."|".$yval;
?>
<img src="<?php echo $chart_link ?>"/>
</body>
</html>
