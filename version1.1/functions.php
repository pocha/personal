<?php
	function RatingFinder($id, $fromfield, $tofield) {

		$result = mysql_fetch_assoc(mysql_query("SELECT AVG({$fromfield}Rating) as Rating, count(*) as Count FROM Review WHERE {$tofield}Id=$id"));
		
		return array(round($result['Rating'],2),$result['Count']);
	}
?>
