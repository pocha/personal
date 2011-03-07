<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>{$title}</title>
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


  #popup1 {
                display: none;
		position: fixed;
		z-index: 10;
		background-color: white;
		top: 20%;
		left: 15%;
		width: 70%;
		max-height: 80%;
		overflow-y:auto;
	border:1px solid rgba(0,0,0,0.4);
	-moz-border-radius: 5px;
	-moz-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	-webkit-border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	padding: 1em;
	padding-top: 0;
	}

		#backgroundPopup1{
			display:none;
			position:fixed;
			_position:absolute; /* hack for internet explorer 6*/
			height:100%;
			width:100%;
			top:0;
			left:0;
			background:#000000;
			border:1px solid #cecece;
			z-index:1;
			opacity: 0.7;
		}


{/literal}
</style>
>

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
		<!--
		<div style="float:right; padding-left: 20px; padding-top: 5px; font-size: small">See the discussion thread <a target="_blank" href="http://hackerstreet.in/item?id=3361">here</a> to see what hacker says about us.</div>
		<div style="float:right; padding-right: 20px; padding-top: 5px; font-size: small">Looking to read as to what happened backstage before launching Stalk Ninja, read it up <a target="_blank" href="http://pocha.posterous.com/why-did-i-choose-to-stalk-ninjas">here</a></div>
		-->
		<div style="clear:both"></div>

	</div><!-- /.contents -->
</div><!-- /#contact -->

{include file="$tpl_name"}


<div id="backgroundPopup1"></div>

	<div id="popup1" style="text-align:left; top:10%;">
		<a class="popup-close" href="javascript:void(0)">x</a>
		<div class="popup-heading">Only a Ninja can pick the project</div>
		<p><strong>If the project has a task</strong>, you can be a Ninja by solving it. Let us know by sending a mail to admin@stalkninja.com with link to your solution <br/><span style="font-size:small"> You might need to upload your solution to your server. If you do not have server space, get it for free <a target="_blank" href="http://www.x10hosting.com">here</a></span>
		</p>
		<p style="text-align:center">OR</p>
		<p><strong>If there is no task in the project</strong> & you have already solved the Ninja Challenge, then send an email from your email registered with us & mention why you want to pick this project. We would show it on the project page.</p>
		<p style="text-align:center">OR</p>
		<p>If you are not a registered Ninja but think that you have everything to do this project,<a href="student.html" target="_blank">Take the Ninja challenge</a> & we would let you compete for the project.</p>
		<!--<div style="margin-top: 10px;">{if $project.Status == "open"} Ready to grab this project!!  See how other Ninjas are competing for this Project,<br/> Move to <a href="project.php?id={$project.Id}#disqus_thread" class="popup-close1">Discussion board</a> {else} The Project has been marked as Closed. Read the one-on-ones happened between Ninjas for this project. <br/> Move to <a href="project.php?id={$project.Id}#disqus_thread" class="popup-close1">Discussion board</a> {/if}</div>-->
</div>


<div id="contact-form" class="section">
	<div class="flow">
		<div class="contents" style="padding-top: 10px; text-align:center; padding-bottom:0">
				<a target="_blank" href="http://pocha.posterous.com">Ashish (Pocha) Sharma</a> (91 95 3838 4545) &amp; <a target="_blank" href="http://twitter.com/sgaurav_baghel">Gaurav Singh</a> initiative. Email - admin@stalkninja.com
		 </div>
				<div style="font-size:small; color:gray; text-align:center;">The site has been tested to work on Mozilla Firefox & Google Chrome. It should work all right in Safari. We just dont give a sh**t about Internet Explorer.</div>
				<br/>
				<div style="clear:both"></div>
				<table>
				<tr>
					<td>
				<a href="http://twitter.com/stalkninja"><img style="width:100px" src="http://swatantra.info/images/swatantra_info_twitter-follow.png"/></a>
					</td>
					<td>
					<table><tr><td style="border:none;">
					
					
<!-- Begin MailChimp Signup Form -->

<div id="mc_embed_signup" style="width: 800px;">
<form action="http://stalkninja.us2.list-manage.com/subscribe/post?u=b16823d4ca5e4753b37046bfd&amp;id=a24e642218" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" style="font: normal 100% Arial, sans-serif;font-size: 12px;">
	<fieldset style="border: 0px solid #ccc;padding-top: 0.0em;margin: .0em 0;background-color: #000;color: #fff;text-align: left;">
	
<div class="mc-field-group" style="margin: 0.0em 1%;clear: both;overflow: hidden;">
<table style="border:0">
	<tr>
		<td>
<span style="font-size:small" for="mce-EMAIL">Are you interested to know how are we evolving ? Let us reach you :</span>
		</td>
		<td>
<input type="text" value="Enter Email" name="EMAIL" id="mce-EMAIL" onfocus="{literal}if(this.value == 'Enter Email') { this.value = ''; }{/literal}" >
<style type="text/css">
{literal}
	#mce-EMAIL {
		font-size: 1em;
		padding: 0.25em;
		color: gray;
	}
	#mce-EMAIL:focus {
		color: black;
	}
{/literal}
</style>
		</td>
		<td>
<input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="btn blue">
		</td>
	</tr>
</table>

</div>
		<div id="mce-responses" style="float: left;top: -0.4em;padding: 0em .2em 0em .1em;overflow: hidden;width: 90%;margin: 0 1%;clear: both;">
			<div class="response" id="mce-error-response" style="display: none;margin: 1em 0;padding: 1em .5em .5em 0;font-weight: bold;float: left;top: -1.5em;z-index: 1;width: 80%;background: FBE3E4;color: #D12F19;"></div>
			<div class="response" id="mce-success-response" style="display: none;margin: 1em 0;padding: 1em .5em .5em 0;font-weight: bold;float: left;top: -1.5em;z-index: 1;width: 80%;background: #E3FBE4;color: #529214;"></div>
		</div>
		
	</fieldset>	
	<a href="#" id="mc_embed_close" class="mc_embed_close" style="display: none;">Close</a>
</form>
</div>

<!--End mc_embed_signup-->
					<div style="font-size: small;color: white; padding-left: 25px;">Looking to be a Ninja? Want to receive updates on projects floated via email? Subscribe to <a href="http://groups.google.com/group/ninjaclan/subscribe" target="_blank">ninjaclan@googlegroups.com</a> & Google SMS Channel by sending sms 'ON STALKNINJA' (without quotes) to 9870807070</div>
					
					</td>
					<td style="padding-left: 1px; border: none;"><iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FStalk-Ninja%2F139273162793864&amp;layout=box_count&amp;show_faces=true&amp;width=60&amp;action=like&amp;colorscheme=light&amp;height=65" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:60px; height:65px;" allowTransparency="true"></iframe><br/><br/>
	<a href="http://twitter.com/share" class="twitter-share-button" data-url="http://stalkninja.com" data-text="Enabling startups to outsource jobs to students" data-count="vertical" data-via="stalkninja" data-related="pocha">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
	</td>
					</tr>
					</table></td></tr></table>
					

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

