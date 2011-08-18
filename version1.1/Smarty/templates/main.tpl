<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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



</head>

<body id="index" class="home">

		
<div id="contact" class="section">
	<div class="contents" style="position:relative;">
		<div id="logo">
			<a href="/"><img src="/img/stalk-ninja.png" alt="Stalk Talent"></a>
			<br/>
			<div class="message" style="color:#8FA52D; font-size: 1.2em; float:left;">
				Get tech projects done from college hackers.
			</div>
		</div><!-- /#logo -->

		<div style="clear:both"></div>

	</div><!-- /.contents -->
</div><!-- /#contact -->

{if $tpl_name != 'index.tpl'}

<div id="header" class="section">
	<div class="contents" style="text-align:center; width: 960px;  text-align:left">
		<table>
			<tr>
				<td>
		<h2 style="margin:0; padding: 10px; color:white;">{$headermain}</h2>
		<p style="font-size:small">{$headersecondary}</p> 
				</td>
				{if $tpl_name != 'float-project.tpl' && $tpl_name != 'pre-login.tpl'}
				<td style="text-align:right; width:300px;">
					<a href="/project/new" class="btn blue" style="font-size:1.5em; margin:1em;">Float a new Project</a>
				</td>
				{/if}
			</tr>
		</table>
 	</div><!-- /.contents -->
</div><!-- /#header -->

{else}

<div style="background:url('/img/bg-w4.png') repeat-x scroll 0 0; display:block; width:100%;">

<div style="width:960px; margin:0 auto">
	<table>
		<tr>
			<td>
	<div id="how-it-works" style="position:relative; height: 300px; width: 300px; margin:0 0 20% 0; top:20px;">

		<img class="main" id="float-project" src="/img/Brainstorming.gif" style="left:70%; top:0"/>
		<img class="arrow" src="/img/arrows/arrow-45.png" style="left:95%;top:5%"/>
		<img class="arrow" src="/img/arrows/arrow-225.png" style="left:80%;top:20%"/>
		<img class="main" id="approve-project" src="/img/thumbs-up.png" style="left:100%; top:25%"/>
		<img class="arrow" src="/img/arrows/arrow-90.png" style="left:110%;top:45%"/>
		<img class="main" id="deposit-money" src="/img/deposit.png" style="left:100%; top:60%"/>
		<img class="arrow" src="/img/arrows/arrow-135.png" style="left:95%;top:85%"/>
		<img class="main" id="propagate-word" src="/img/propagating-word.png" style="left:75%; top:90%"/>
		<img class="arrow" src="/img/arrows/arrow-180.png" style="left:50%;top:100%"/>
		
		<img class="main" id="project-interaction" src="/img/interaction.png" style="left:30%; top:90%"/>
		<img class="arrow" src="/img/arrows/arrow-225.png" style="left:10%;top:80%"/>

		<img class="main" id="project-kick-off" src="/img/Work_in_progress.svg.png" style="left:0%; top:60%"/>
		<img class="arrow" src="/img/arrows/arrow-270.png" style="left:-10%;top:45%"/>
		<img class="main" id="we-monitor" src="/img/examiner.png" style="height:30%; width:30%;left:-35%; top:40%"/>
		<img class="arrow" src="/img/arrows/arrow-90.png" style="left:10%;top:45%"/>
		<img class="main" id="bug-reporting" src="/img/no-bugs.png" style="left:0%; top:25%"/>
		
		<img class="arrow" src="/img/arrows/arrow-315.png" style="left:10%;top:5%"/>
		<img class="main" id="project-done" src="/img/project-completion.png" style="left:30%; top:0"/>
	
		<div id="text-holder">

			<div id="default-project-text" >
				<h3>Project Life Cycle</h3>
				<p style="font-size:small">Point cursor on images to view description</p>
			</div>
			
		<div id="float-project-text" style="display:none;" class="box">
			<h3>1. You float a project.</h3>
				<p style="font-size:small">Brainstorm to create requirement into project.</p>
				
		</div>
		
		<div id="approve-project-text" style="display:none;" class="box">
			<h3>2. We review & approve.</h3>
				<p style="font-size:small">Review project for clarity & feasibility.</p>
		</div>
	
		<div id="deposit-money-text" style="display:none;" class="box">
			<h3>3. You deposit project premium.</h3>
				<p style="font-size:small">Once project is approved, we intimate the project creator with an invoice.</p>
		</div>

		<div id="propagate-word-text" style="display:none;" class="box">
			<h3>4. We propagate your project.</h3>
				<p style="font-size:small">Your project reaches 450+ registered college developers & more than 5000 students via facebook & google groups.</p>
		</div>

		<div id="project-interaction-text" style="display:none;" class="box">
			<h3>5. You interact with Ninjas on discussion board.</h3>
				<p style="font-size:small">Students & Ninjas start attempting the project task.</p>
		</div>

		<div id="project-kick-off-text" style="display:none;" class="box">
			<h3>6. You select a Ninja for the project.</h3>
				<p style="font-size:small">The Ninja starts the work & reports to project creator regularly.</p>
		</div>
		
		<div id="we-monitor-text" style="display:none;" class="box">
			<h3>8. We monitor all the projects.</h3>
				<p style="font-size:small">We monitor all projects personally. All interaction is mandated to be cced to us.</p>
		</div>

		<div id="bug-reporting-text" style="display:none;" class="box">
			<h3>7. You pass on regular feedback.</h3>
				<p style="font-size:small">Project creator timely checks for the delivered work & report bugs. The Ninja fix them & report back.</p>
		</div>
	
		<div id="project-done-text" style="display:none;" class="box">
			<h3>9. The project gets done & Ninja is paid.</h3>
				<p style="font-size:small">Once project creator okays the deliverables, Ninja is paid post review & rating exchange. </p>
		</div>
		
		<script type="text/javascript">
	{literal}
	$("#how-it-works img.main").each(
		function(index) {
			id = $(this).attr('id');
			$(this).bind('mouseover',function(){
				hideAll();
				$("#" + $(this).attr('id') + "-text").show();
			});

			$(this).bind('mouseout', function(){
				hideAll();
				$("#default-project-text").show();
			});
		}
	);
	
	function hideAll() {
		$("#text-holder div").each(function(){
			$(this).hide();
		})
		
	}
	{/literal}
</script>
	
			
		</div>

	</div>
			</td>
			<td style="width:600px;">
			
	<!-- insert side content here -->

		<div id="banner-right">
			<div id="slideshow1" class = "slide" >
				<img src="/img/push.gif">
				<h2>Get your pending tech work pushed</h2>
			</div>
			<div id="slideshow2" class = "slide" style="display:none">
				<img src="/img/propagating-word.png">
				<h2>Your project reaches more than 5000 college hackers.</h2>
			</div>
			<div id="slideshow3" class = "slide" style="display:none">
				<img src="/img/solve-task.png">
				<h2>Evaluate before you hire via project task.</h2>
			</div>
			<div id="slideshow4" class = "slide" style="display:none">
				<img src="/img/deposit.png">
				<h2>We hold the money during the project.</h2>
			</div>
			<div id="slideshow5" class = "slide" style="display:none">
				<img src="/img/examiner.png">
				<h2>We refine & monitor all projects.</h2>
			</div>
			<div id="slideshow6" class = "slide" style="display:none">
				<img src="/img/Staff.png">
				<h2>Evaluate freshers & build hiring pipeline.</h2>
			</div>
						
		</div>
		<div class="image-switch">
			<a id="slideshow-mark-1" class="box active">1</a>
			<a id="slideshow-mark-2" class="box">2</a>
			<a id="slideshow-mark-3" class="box">3</a>
			<a id="slideshow-mark-4" class="box">4</a>
			<a id="slideshow-mark-5" class="box">5</a>
			<a id="slideshow-mark-6" class="box">6</a>
		</div>
		<script type="text/javascript">
			{literal}
			
			var slideshow_t1, slideshow_t2;

			start_slideshow(1, 6, 5000);
    
			function start_slideshow(start_frame, end_frame, delay) {
				//setTimeout(switch_slides(start_frame,start_frame,end_frame, delay), delay);
        setTimeout("switch_slides("+start_frame+","+start_frame+","+end_frame+","+ delay+")", delay + 850);
			}
			function switch_slides(frame, start_frame, end_frame, delay) {
            $('#slideshow' + frame).fadeOut();
						$('#slideshow-mark-'+frame).removeClass('active');

            if (frame == end_frame) { frame = start_frame; } else { frame = frame + 1; }
            
						slideshow_t1 = setTimeout("$('#slideshow" + frame + "').fadeIn(); $('#slideshow-mark-"+frame+"').addClass('active');", 850);
            
						slideshow_t2 = setTimeout("switch_slides("+frame+","+start_frame+","+end_frame+","+ delay+")", delay + 850);
			}
	
		
			{/literal}
			</script>

			</td>
		</tr>

	
	</table>


</div>
</div>

{/if}

<div style="width:960px; margin:0 auto">
	{include file="$tpl_name"}
</div>

<div class="clearfix png_bg" id="footer">
		<div class="container_12">
						
					
<div style="margin:10px;">Subscribe to <a href="http://groups.google.com/group/ninjaclan">ninjaclan@googlegroups.com</a> & get intimated of new project. Its the hangout place for existing & wanna-be Ninjas. </div>
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
					<li><a href="/">Back to Sq 1</a></li>
					<li><a href="/aboutus.php">Know Us</a></li>
					<li><a href="/tnc.php">Know this too</a></li>
					<li><a href="/privacy.php">Keeping your secret</a></li>
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
		
			<img style="float:right; height:40px; margin-bottom:10px;" src="/img/contact.gif"/><br/>
			<!--
			<div style="font-size:1.5em; margin-bottom:10px;">
				mailto:admin@stalkninja.com shout@919538384545
			</div>
			-->
			<div class="tab">
				<ul> 
					<li><a {if $tpl_name eq 'index.tpl'}class='active'{/if}  target="_top" href="/" >Home</a></li>
					<li><a {if $tpl_name eq 'how-it-works.tpl'}class='active'{/if}  target="_top" href="/how-it-works.php">How it Works</a></li>
					<li><a {if $tpl_name eq 'press.tpl'}class='active'{/if}  target="_top" href="/press.php">What Press Says</a></li>
					<li><a {if $tpl_name eq 'pricing.tpl'}class='active'{/if}  target="_top" href="/pricing.php">Pricing</a></li>
					<li><a {if $tpl_name == 'faq.tpl'}class='active'{/if}  target="_top" href="/faq.php">FAQ</a></li>
					<li><a target="_blank" href="http://blog.stalkninja.com">Blog</a></li>
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


<!-- irc chat widget -->
<!--<div style="position:fixed; right:0; bottom:0; width:647px; height: 400px;">
	<iframe src="http://webchat.freenode.net?randomnick=1&channels=%23%23sn" width="647" height="400"></iframe>
</div>-->
<a id="irc-chatroom" class="btn" target="_blank" style="position:fixed; right: 10px; bottom: 30px; font-weight:normal; background-color:#2A2A2A; background-image:none; color:white;" href="http://webchat.freenode.net?randomnick=1&channels=%23%23sn">
	<span style="font-size:small">Chat with StalkNinja users</span><br/><span style="font-size:x-small">irc chatroom (channel ##sn)</span>
</a>

<a class="iframe" style="background-color:black; background-image: url('/img/contact-us.png'); height: 102px; right:0; margin-right: -7px; position:fixed; text-indent: -10000px; top: 40%; width:42px; z-index: 10000" id="contact-us" href="/contact.php">Contact Us</a>
<style type="text/css">
{literal}
	a.iframe:hover {
		padding-right: 5px;
	}
{/literal}
</style>

</body>

<script type="text/javascript" src="/fancybox/jquery.fancybox-1.3.4.pack.js"></script>
<link rel="stylesheet" href="/fancybox/jquery.fancybox-1.3.4.css" type="text/css" media="screen" />
<script type="text/javascript">
{literal}
	$(document).ready(function(){
		$("a#contact-us").fancybox({
		});	
	})
{/literal}
</script>

<!--
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
-->
</html>

