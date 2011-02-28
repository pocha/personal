<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>Stalk Ninja</title>
	<link rel="stylesheet" href="css/main.css" type="text/css" media="all">
	<script type="text/javascript" src="js/jquery-1.4.2.js"></script>

<style type="text/css">
{literal}
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

{/literal}
</style>

  <script type="text/javascript" charset="utf-8">
        {literal}
  var is_ssl = ("https:" == document.location.protocol);
  var asset_host = is_ssl ? "https://s3.amazonaws.com/getsatisfaction.com/" : "http://s3.amazonaws.com/getsatisfaction.com/";
  document.write(unescape("%3Cscript src='" + asset_host + "javascripts/feedback-v2.js' type='text/javascript'%3E%3C/script%3E"));
  {/literal}
</script>

<script type="text/javascript" charset="utf-8">
{literal}
  var feedback_widget_options = {};

  feedback_widget_options.display = "overlay";  
  feedback_widget_options.company = "stalkninja";
  feedback_widget_options.placement = "right";
  feedback_widget_options.color = "#222";
  feedback_widget_options.style = "idea";
  var feedback_widget = new GSFN.feedback_widget(feedback_widget_options);
  {/literal}
</script>


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
				<!--<li><a href="#">Login</a></li>-->
			</ul>
		</div>

		
<div id="contact" class="section" {if $tpl_name ne 'index.tpl'} style="background-color:gray" {/if} >
	<div class="contents" style="position:relative;">
		<div id="logo">
			<a href=""><img src="img/stalk-ninja.png" alt="Stalk Talent"></a>
		</div><!-- /#logo -->
		
		<div class="message" style="{if $tpl_name eq 'index.tpl'} color:gray; {/if} font-size: 18px; float:left; padding-left: 20px; padding-top: 15px;">
		{$top_message}
		</div>

		<div style="clear:both"></div>
		<div style="text-align:center;font-size: small; color: black; margin-bottom:10px">Stalk our founder <strong>Ashish (aka Pocha)</strong>: Phone: <strong>91 95 3838 4545</strong> Email: <strong>admin@stalkninja.com</strong></div>
		<!--
		<div style="float:right; padding-left: 20px; padding-top: 5px; font-size: small">See the discussion thread <a target="_blank" href="http://hackerstreet.in/item?id=3361">here</a> to see what hacker says about us.</div>
		<div style="float:right; padding-right: 20px; padding-top: 5px; font-size: small">Looking to read as to what happened backstage before launching Stalk Ninja, read it up <a target="_blank" href="http://pocha.posterous.com/why-did-i-choose-to-stalk-ninjas">here</a></div>
		-->
		<div style="clear:both"></div>

	</div><!-- /.contents -->
</div><!-- /#contact -->

{include file="$tpl_name"}

<div id="contact-form" class="section">
	<div class="flow">
		<div class="contents" style="padding-top: 10px; text-align:center; padding-bottom:0">
				<a target="_blank" href="http://pocha.posterous.com">Ashish (Pocha) Sharma</a> &amp; <a target="_blank" href="http://twitter.com/sgaurav_baghel">Gaurav Singh</a> initiative.
		 </div>
				<div style="font-size:small; float:left; color:gray">The site has been tested to work on Mozilla Firefox & Google Chrome. It should work all right in Safari. We just dont give a sh**t about Internet Explorer.</div>
				<br/>
				<table>
				<tr>
					<td>
				<a href="http://twitter.com/stalkninja"><img style="width:100px" src="http://swatantra.info/images/swatantra_info_twitter-follow.png"/></a>
					</td>
					<td>
				<div style="font-size: small;color: white">Want to receive updates on projects floated via email? Subscribe to <a href="http://groups.google.com/group/ninjaclan" target="_blank">ninjaclan@googlegroups.com</a></div>
					</td>
				</tr>
				</table>

				<div style="clear:both"></div>
				

	</div><!-- /.flow -->
</div><!-- /#contact-form -->


</body>
<script type="text/javascript">
{literal}
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-19358575-3']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
{/literal}
</script>

</html>

