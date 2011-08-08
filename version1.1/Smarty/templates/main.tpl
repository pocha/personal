<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<html>
<head>
	<title>{$title}</title>
	<link rel="stylesheet" href="/css/main.css" type="text/css" media="all">
	<script type="text/javascript" src="/js/jquery-1.4.2.js"></script>


<script type="text/javascript" src="/js/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
	{literal}
tinyMCE.init({
        // General options
        mode : "textareas",
        theme : "advanced",
		
plugins : "",

 

                // Theme options
					theme_advanced_buttons1 : "bold,italic,|,bullist,numlist,|,outdent,indent,|,link,unlink",
					theme_advanced_buttons2 : "",
					theme_advanced_buttons3 : "",
					theme_advanced_toolbar_location : "top",
					theme_advanced_toolbar_align : "left",
					theme_advanced_statusbar_location : "bottom",
					theme_advanced_resizing : true,
					theme_advanced_path : false,
					valid_elements : "p,br,strong/b,em/i,ul,ol,li,a[!href|title]",
		
		
       
		height: "360px",
		width: "700px",
		

        // Skin options
        skin : "o2k7",
        skin_variant : "silver",

        // Example content CSS (should be your site CSS)
         

        // Drop lists for link/image/media/template dialogs
        template_external_list_url : "/js/template_list.js",
        external_link_list_url : "/js/link_list.js",
        external_image_list_url : "/js/image_list.js",
        media_external_list_url : "/js/media_list.js",

        // Replace values for the template plugin
        template_replace_values : {
                username : "Some User",
                staffid : "991234"
        }
});{/literal}
</script>





	
	<style type="text/css">
{literal}
	.menu-container {
		position: absolute;
		z-index: 100;
		right: 150px;
		top: 0;
	}
  .menu  {
		background-color: black;
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

		
<div id="contact" class="section">
	<div class="contents" style="position:relative;">
		<div id="logo">
			<a href="/"><img src="/img/stalk-ninja.png" alt="Stalk Talent"></a>
			<br/>
			<div class="message" style="color:#CCCCCC; font-size: 1.2em; float:left;">
				Managed tech outsourcing to college students.
			</div>
		</div><!-- /#logo -->

		<div style="clear:both"></div>

	</div><!-- /.contents -->
</div><!-- /#contact -->


<div id="header" class="section">
	<div class="contents" style="text-align:center; width: 960px">
		<h2 style="margin:0; padding: 10px; color:white;">{$headermain}</h2>
		<p style="font-size:small">{$headersecondary}</p> 
 	</div><!-- /.contents -->
</div><!-- /#header -->

<div style="width:960px; margin:0 auto">
	{include file="$tpl_name"}
</div>

<div class="clearfix png_bg" id="footer">
		<div class="container_12">
						
					
<div style="margin:10px;">Subscribe to <a href="">ninjaclan@googlegroups.com</a> & get intimated of new project. Its the hangout place for existing & wanna-be Ninjas. </div>
<!-- Begin MailChimp Signup Form -->

<div id="mc_embed_signup" style="width: 800px;">
<form action="http://stalkninja.us2.list-manage.com/subscribe/post?u=b16823d4ca5e4753b37046bfd&amp;id=a24e642218" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" style="font: normal 100% Arial, sans-serif;font-size: 12px;">
	<fieldset style="border: 0px solid #ccc;padding-top: 0.0em;margin: .0em 0;background-color: transparent;color: inherit;text-align: left;">
	
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


		 <div class="grid_12 holder">
				<span class="copy">2011 &copy; All rights reserved </span>
				<ul>
					<li><a href="index.php">Home</a></li>
					<li><a href="aboutus.php">About Us</a></li>
					<li><a href="pricing.php">Pricing</a></li>
					<li><a href="faq.php">FAQs</a></li>
					<li><a href="privacy.php">Privacy Policy</a></li>
					<li><a href="tnc.php">Terms & Conditions</a></li>
					<li>Contact: admin[at]stalkninja[dot]com</li>
				</ul>
			</div>
			<div class="clear">&nbsp;</div>
				
			<div style="font-style:italic; margin-bottom:10px">The site has been tested to work on Mozilla Firefox & Google Chrome. It should work all right in Safari. Sorry, we do not care much about Internet Explorer for now.</div>
		
		</div>
	
	</div>


<div class="menu-container">
		<!--<div class="menu" style="float:left; margin-top: 15px;">
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
			</ul>
			</div>
			-->
			<style type="text/css">
			{literal}
.tab {
    background: url("http://snapengage.com/img/site/tab-l2.png") no-repeat scroll 0 0 transparent;
    float: right;
    height: 36px;
    padding-left: 10px;
}
.tab ul {
    background: url("http://snapengage.com/img/site/tab-r2.png") no-repeat scroll right center #F5F5F5;
    font: bold 20px Arial,Helvetica,sans-serif;
    height: 36px;
    padding-right: 10px;
}
.tab ul li {
    display: block;
    float: left;
}
.tab ul li a.active {
    color: #75A8FF;
}
.tab ul li a {
    color: #777777;
    display: block;
    float: left;
    height: 36px;
    line-height: 26px;
    padding: 3px 10px;
    text-decoration: none;
		font-size: 0.7em;
}
.tab ul li a:hover {
	color: #8DC23A;
	background-color:inherit;
}
			{/literal}
			</style>
			<table>
				<tr>
					<td>
			<div class="tab">
				<ul> 
					<li><a target="_top" href="index.php" >Home</a></li>
					<li><a target="_top" href="aboutus.php">About Us</a></li>
					<li><a target="_top" href="how-it-works.php">How it Works</a></li>
					<li><a target="_top" href="press.php">What Press Says</a></li>
					<li><a target="_top" href="pricing.php">Pricing</a></li>
					
				</ul>
			</div>
				</td>
				<td>
			<iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FStalk-Ninja%2F139273162793864&amp;layout=buttton_count&amp;show_faces=true&amp;width=60&amp;action=like&amp;colorscheme=light&amp;height=30" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:55px; height:30px;padding-top:10px; padding-bottom:5px" allowTransparency="true"></iframe>
			<iframe scrolling="no" frameborder="0" allowtransparency="true" src="http://platform0.twitter.com/widgets/tweet_button.html?_=1308486732491&amp;count=horizontal&amp;id=twitter_tweet_button_0&amp;lang=en&amp;original_referer=http%3A%2F%2Fdev.stalkninja.com%2F&amp;related=pocha&amp;text=Enabling%20startups%20to%20outsource%20jobs%20to%20students&amp;url=http%3A%2F%2Fstalkninja.com&amp;via=stalkninja" class="twitter-share-button twitter-count-horizontal" style="height: 20px; width: 60px; display: block;" title="Twitter For Websites: Tweet Button"></iframe>
			</td>
			</tr>
		</table>
		</div>
		<div style="clear:both"></div>
		</div>



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

<script type="text/javascript">
{literal}
document.write(unescape("%3Cscript src='" + ((document.location.protocol=="https:")?"https://snapabug.appspot.com":"http://www.snapengage.com") + "/snapabug.js' type='text/javascript'%3E%3C/script%3E"));</script><script type="text/javascript">
SnapABug.addButton("97e4e1a5-4f24-431d-89d9-46453ea0d203","3","90%","true");
{/literal}
</script>
<style type="text/css">
{literal}
	.SnapABug_Button {
		left: !important;
		right: 10px !important;
		padding-bottom: 10px !important;
	}
{/literal}
</style>

</html>

