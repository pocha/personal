<?php /* Smarty version 2.6.26, created on 2011-02-09 17:40:15
         compiled from main.tpl */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Stalk Ninja</title>
	<link rel="stylesheet" href="css/main.css" type="text/css" media="all">
	<script type="text/javascript" src="js/jquery-1.4.2.js"></script>

<style type="text/css">
<?php echo '
  .menu  {
		background-color: black;
		position: absolute;
		z-index: 100;
		right: 150px;
		top: 15px;
		border:1px solid rgba(0,0,0,0.4);
	-moz-border-radius: 5px;
	-moz-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	-webkit-border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);

	}
	.menu li {
		float:left;
		list-style:none;
		cursor: pointer;
		display:block;
		border-right:1px solid #333;
		height: 30px;
		padding: 0px 10px;
	}
	
	.menu li:hover, .menu li:hover a {
		background-color: transparent;
		text-decoration: none;
		z-index:100;
	}

	.menu li a {
		margin: 0px;
		padding:5px;
		font-weight:bold;
		color:#FFF;
		display:block;
		font-size: small;
	}
  
	.menu li ul {
		position:absolute;
		width: 10em;
		left: -9999px;
			border:1px solid rgba(0,0,0,0.4);
	-moz-border-radius: 5px;
	-moz-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	-webkit-border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
		background-color:black;
	}

	.menu li:hover ul {
		left: 0px;
	}

	.menu li ul li {
	  font-size: small;
		float:left;
		color: white;
		width: 152px;
		background-color: black;
		height: auto;
	}
	
	.menu li:hover ul li:hover {
		background: gray;
	}

'; ?>

</style>

</head>

<body id="index" class="home">

	<div class="menu">
			<ul id="page-bar">
				<li><a href="http://stalkninja.com">Home</a></li>
				<li style="position:relative"><a href="http://blog.stalkninja.com" target="_blank">Interesting Bits</a>
					<ul>
						<li><a href="http://blog.stalkninja.com/the-reason-behind-stalk-ninja" target="_blank">The Reason(not the song from Hoobastanks)</a></li>
						<li><a target="_blank" href="http://blog.stalkninja.com/some-of-the-rules-can-be-bent-others-can-be-b">Making of Stalk Ninja</a></li>
						<li><a target="_blank" href="http://blog.stalkninja.com/pitching-to-ninjas">Pitch to students</a></li>
						<li><a target="_blank" href="http://blog.stalkninja.com/our-harbingers">People pitching for us</a></li>
						<li><a target="_blank" href="http://hackerstreet.in/item?id=3361">Stalk Ninja at Hacker Street India</a></li>
					</ul>
				</li>
				<li><a href="#">Login</a></li>
			</ul>
		</div>


		
<div id="contact" class="section">
	<div class="contents" style="position:relative;">
		<div id="logo">
			<a href=""><img src="img/stalk-ninja.png" alt="Stalk Talent"></a>
		</div><!-- /#logo -->
		
		<div class="message" style="color:white; font-size: 18px; float:left; padding-left: 20px; padding-top: 15px;">
		<?php echo $this->_tpl_vars['top_message']; ?>

		</div>


		<!--
		<div style="float:right; padding-left: 20px; padding-top: 5px; font-size: small">See the discussion thread <a target="_blank" href="http://hackerstreet.in/item?id=3361">here</a> to see what hacker says about us.</div>
		<div style="float:right; padding-right: 20px; padding-top: 5px; font-size: small">Looking to read as to what happened backstage before launching Stalk Ninja, read it up <a target="_blank" href="http://pocha.posterous.com/why-did-i-choose-to-stalk-ninjas">here</a></div>
		-->
		<div style="clear:both"></div>

	</div><!-- /.contents -->
</div><!-- /#contact -->

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_name']), 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div id="contact-form" class="section" style="margin-top: 20px">
	<div class="flow">
		<div class="contents" style="padding-top: 10px; text-align:center">
				<a target="_blank" href="http://pocha.posterous.com">Ashish (Pocha) Sharma</a> &amp; <a target="_blank" href="http://twitter.com/sgaurav_baghel">Gaurav Singh</a> initiative. <!--<div style="float:right; font-size:small;">The matrix image is taken from http://elkarneclausen.files.wordpress.com/2010/06/the-matrix09.jpg</div>-->
			</div><!-- /.contents -->
	</div><!-- /.flow -->
</div><!-- /#contact-form -->


</body>
<!--
<script type="text/javascript">
<?php echo '
  var _gaq = _gaq || [];
  _gaq.push([\'_setAccount\', \'UA-19358575-3\']);
  _gaq.push([\'_trackPageview\']);

  (function() {
    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;
    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';
    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);
  })();
'; ?>

</script>
-->

</html>
