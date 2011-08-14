<?php
	session_start();	
	$token = $_POST['token'];
	
$post_data = array('token' => $token,
                     'apiKey' => '56bfaca88eda84fd27d8912907c0d65021daead4',
                     'format' => 'json'/*,
                     'extended' => 'true'*/); //Extended is not available to Basic.

  $curl = curl_init();
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_URL, 'https://rpxnow.com/api/v2/auth_info');
  curl_setopt($curl, CURLOPT_POST, true);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $post_data);
  curl_setopt($curl, CURLOPT_HEADER, false);
  curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
  curl_setopt($curl, CURLOPT_FAILONERROR, true);
  $result = curl_exec($curl);
  curl_close($curl);
	
  $header = "From: admin@stalkninja.com\r\n";
	
	if ($result == false){
    /*echo "\n".'Curl error: ' . curl_error($curl);
    echo "\n".'HTTP code: ' . curl_errno($curl);
    echo "\n"; var_dump($post_data);*/
		mail("admin@stalkninja.com","System Fail","from - ".$_SESSION['previous_url']." to - ".$_SESSION['url'], $header);
		header('Location: '.$_SESSION['url']);
  }
	
	$auth_info = json_decode($result, true);
	if ($auth_info['stat'] == 'ok') {
		/*switch ($auth_info['profile']['providerName']) {
			case "Twitter": 
			case "Facebook":
				setcookie('Id', $auth_info['profile']['url']);
			break;

		}*/
		setcookie('Id', $auth_info['profile']['url']);

		mail("admin@stalkninja.com","Authentication Passed",$auth_info['profile']['url']." from - ".$_SESSION['previous_url']." to - ".$_SESSION['url'], $header);
		header('Location: '.$_SESSION['url']);
	}
	else {
		mail("admin@stalkninja.com","Authentication Failed"," from - ".$_SESSION['previous_url']." to - ".$_SESSION['url'], $header);
?>
<script type="text/javascript">
		alert('login failed. Redirecting back');
<?php		if (isset($_SESSION['previous_url'])) { ?>
			window.location = "<?php $_SESSION['previous_url'] ?>"
<?php		} else { ?>
			window.location = "/pre-login.php"
<?php } ?>
</script>
<?php 
	}
?>
