<script type="text/javascript">
{literal}
$(document).ready(function() {		
	
	//Execute the slideShow
	//slideShow();

});

function slideShow() {

	//Set the opacity of all images to 0
	$('#gallery a').css({opacity: 0.0});
	
	//Get the first image and display it (set it to full opacity)
	$('#gallery a:first').css({opacity: 1.0});
	
	//Set the caption background to semi-transparent
	$('#gallery .caption').css({opacity: 0.7});

	//Resize the width of the caption according to the image width
	$('#gallery .caption').css({width: $('#gallery a').find('img').css('width')});
	
	//Get the caption of the first image from REL attribute and display it
	$('#gallery .content').html($('#gallery a:first').find('img').attr('rel'))
	.animate({opacity: 0.7}, 400);
	
	//Call the gallery function to run the slideshow, 6000 = change to next image after 6 seconds
	setInterval('gallery()',6000);
	
}

function gallery() {
	
	//if no IMGs have the show class, grab the first image
	var current = ($('#gallery a.show')?  $('#gallery a.show') : $('#gallery a:first'));

	//Get next image, if it reached the end of the slideshow, rotate it back to the first image
	var next = ((current.next().length) ? ((current.next().hasClass('caption'))? $('#gallery a:first') :current.next()) : $('#gallery a:first'));	
	
	//Get next image caption
	var caption = next.find('img').attr('rel');	
	
	//Set the fade in effect for the next image, show class has higher z-index
	next.css({opacity: 0.0})
	.addClass('show')
	.animate({opacity: 1.0}, 1000);

	//Hide the current image
	current.animate({opacity: 0.0}, 1000)
	.removeClass('show');
	
	//Set the opacity to 0 and height to 1px
	$('#gallery .caption').animate({opacity: 0.0}, { queue:false, duration:50 }).animate({height: '1px'}, { queue:true, duration:300 });	
	
	//Animate the caption, opacity to 0.7 and heigth to 100px, a slide up effect
	$('#gallery .caption').animate({opacity: 0.7},100 ).animate({height: '100px'},500 );
	
	//Display the content
	$('#gallery .content').html(caption);
	
	
}
{/literal}
</script>
<style type="text/css">
{literal}
#gallery {
	position:absolute;
	top: -100px;
	
}
	#gallery a {
		float:left;
		position:absolute;
	}
	
	#gallery a img {
		border:none;
	}
	
	#gallery a.show {
		z-index:500
	}

{/literal}
</style>


<!-- temp float project blue area -->
<p style="font-size:xx-large; margin-bottom:0">Rs. {$stats.Money} worth of projects floated in past {$stats.Months} months {if $stats.Days > 0} {$stats.Days} days {/if}*</p> 

<!-- temp float project blue area closes -->

	<div style="float:left; width: 650px;">

		<div class="message" style="font-size: small; text-align:center ; padding-bottom: 20px;">
		  Click on a project below for details.
		</div>

		<div style="overflow: hidden" id="project-container">
			{foreach from=$projects item=p}
			<div class="btn {$p.Status}" style="text-align:center; width:90%; margin-bottom: 10px; font-size: small">
				<a href="/project/{$p.Id}">
				<table style="width:100%;">
					<tr>
						<td>{$p.Heading}</td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td>Status: {$p.Status}</td>
									<td>Budget: Rs. {$p.Budget|number_format:0:".":","}</td>
									<td>Date: {$p.DateCreated|date_format:"%B %e"}</td>
									
								</tr>
								{if $p.Status == 'cancelled' || $p.Status == 'pending-approval' }
								<tr>
									<td colspan="3" style="font-size:x-small;">{$p.Message}</td>
								</tr>
								{/if}
							</table>
						</td>
					</tr>
				</table>
				</a>
			</div>
			{/foreach}
			
		</div>
	</div>
	
	<div style="float:right; width:300px; font-size:small; margin-top:30px;">
		<script type="text/javascript" src="http://adminstalkninja.disqus.com/combination_widget.js?num_items=20&hide_mods=0&color=grey&default_tab=recent&excerpt_length=200"></script>
		<script src="/disqus/jquery.jcarousel.min.js"></script>
		<script src="/disqus/abhinav.js"></script>
		<link rel="stylesheet" href="/disqus/tango/skin.css" />
		<link rel="stylesheet" href="/disqus/style.css" />
	
		<div style="text-align:left;">
			<ul id="tabs" style="padding:5px;">
				<li id="tab-people">People</li>
				<li id="tab-recent" class="active">Recent</li>
				<li id="tab-popular" >Popular</li>
			</ul>
			<ul id="mycarousel" class="jcarousel jcarousel-skin-tango"></ul>
		</div>
	</div>

	<div style="clear:both"></div>

</div>


<style type="text/css">
{literal}
		.tooltip {
			border-bottom: 0px dotted #000000; color: #000000; outline: none;
			cursor: pointer; text-decoration: none; position: relative;
			font-color: black;
		}
		
		.tooltip span {
			margin-left: -999em;
			position: absolute;
		}
		.tooltip:hover span {
			border-radius: 5px 5px; -moz-border-radius: 5px; -webkit-border-radius: 5px; 
			box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); -webkit-box-shadow: 5px 5px rgba(0, 0, 0, 0.1); -moz-box-shadow: 5px 5px rgba(0, 0, 0, 0.1);
			font-family: Calibri, Tahoma, Geneva, sans-serif;
			position: absolute; left: 0; top: 1em; z-index: 99;
			margin-left: 0; width: 250px; 
		}
		.tooltip:hover {
			background-color: transparent;
			/* border: 0; margin: -10px 0 0 -55px;
		    float: left; position: absolute; */
		}
		.tooltip:hover img{
			height: 256px;
		}

		.tooltip:hover em {
			font-family: Candara, Tahoma, Geneva, sans-serif; font-size: 1.2em; font-weight: bold;
			display: block; padding: 0.2em 0 0.6em 0;
		}
		.classic { padding: 0.8em 1em; color:#000; background-color: #DCDCDC; font-size: small }
		.custom { padding: 0.5em 0.8em 0.8em 2em; }
	
		{/literal}
		</style>




<br/><br/>
<p style="font-size:small; font-style:italic">* The figure includes the budget of cancelled projects too</p>
