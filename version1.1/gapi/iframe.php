<style type="text/css">
 * {
 text-align:center; margin:0; padding:0;
 }
</style>
<?php
define('ga_email','pocha.sharma@gmail.com');
define('ga_password','pocha320');
define('ga_profile_id','40125263');

require 'gapi.class.php';

$ga = new gapi(ga_email,ga_password);

$ga->requestReportData(ga_profile_id,array('pagePath'),array('pageviews'),NULL,"pagePath == '".$_GET['url']."'",'2010-12-18',date('Y-m-d'));
?>
<p style="font-size:20px;"><?php echo $ga->getPageviews() ?></p>
<?php //echo $ga->getVisits() ?>
  <?php //echo $ga->getUpdated() ?>
