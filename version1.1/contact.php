<?php
	
	include("smarty.php");
	$error = "";
	
	if (isset($_POST['Email'])) {
		
		$url = 'http://sendgrid.com/';
		$user = 'stalkninja';
		$pass = 'stalkninja123';
		 
		$params = array(
				'api_user'  => $user,
				'api_key'   => $pass,
				'to'        => $_POST['Email'],
				'subject'   => 'Hi from Stalk Ninja',
				'text'      => 'Hey '.$_POST['Name']."

We want you to know that we have received your email. If you need to follow-up, feel free to reply to this email.

We get quite a few funding related queries. If you have similar intention (we would know it better after checking your email), you might get a canned response shortly, but we follow it up with a personal message soon.

We currently are looking out for mentors who like what we are doing & would like to come on our advisory board. If you know of someone who fit the bill, do refer us to them. 


Thanks for taking time to write & the next time we meet, coffee/beer is on us :). We are in Bangalore, India btw. 

Ashish Sharma - Founder & Biz Head,
pocha@stalkninja.com +91 95 3838 4545
http://linkedin.com/in/thinkingpocha
Twitter - @pocha
"

				'from'      => 'admin@stalkninja.com',
			);
		 
		 
		$request =  $url.'api/mail.send.json';
		 
		// Generate curl request
		$session = curl_init($request);
		curl_setopt ($session, CURLOPT_POST, true);
		curl_setopt ($session, CURLOPT_POSTFIELDS, $params);
		curl_setopt($session, CURLOPT_HEADER, false);
		curl_setopt($session, CURLOPT_RETURNTRANSFER, true);
		 
		$respose = curl_exec($session);
		curl_close($session);
		
		$params['to'] = "admin@stalkninja.com";
		$params['from'] = $_POST['Email'];
		$params['subject'] = "Hi from ".$_POST['Name'];
		$params['text'] = $_POST['Message'];

		$session = curl_init($request);
		curl_setopt ($session, CURLOPT_POST, true);
		curl_setopt ($session, CURLOPT_POSTFIELDS, $params);
		curl_setopt($session, CURLOPT_HEADER, false);
		curl_setopt($session, CURLOPT_RETURNTRANSFER, true);
		 
		$respose = curl_exec($session);
		curl_close($session);
		
		if (preg_match("/error/",$response)) {
			$error = "Email can not be sent to the founders. Please write back to them directly at <a href='mailto:admin@stalkninja.com'>admin@stalkninja.com</a>. Its inconvenient, but our system chose to be frank. Our sincere apologies.";
		}

		$smarty->assign("submission",1);
	}
	

	$smarty->assign("data",$_POST);
	$smarty->assign("error",$error);
	$smarty->assign("headermain","We are just an email away");
	//$smarty->assign("tpl_name","contact.tpl");
	$smarty->display("contact.tpl");
?>
