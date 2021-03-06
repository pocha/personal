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

{include file="review.tpl"}

<p style="font-size:1.5em;">{$stats.Money}* projects have floated in past {$stats.Months} months {if $stats.Days > 0} {$stats.Days} days {/if} & {$ninjaCount} students have solved task of at least one of the projects to get themselves featured on <a href="/ninja-list.php" target="_blank">Wall of Ninjas</a></p> 
<p style="font-size:small; font-style:italic; text-align:left; margin-top:0">* The figure includes canceled projects too.</p>
<div class="box" style="margin-top: 2em; margin-bottom:2em; font-size:2em; background-color:#EFEFEF" >Ready with your requirement ? <a class="btn blue" target="_blank" href="/project/new">Post Project for free.*</a><p style="font-size:medium; font-style:italic;">*You need to pay once we approve your project not while floating the project.</p>
<p style="font-size: small; margin-top:0.1em">We would ideally like you to go through at least one project before you float one. We spend quite a bit of time reviewing new projects.</p>
<p style="font-size:medium">Looking to be one of the {$ninjaCount} Ninja(s) ? Solve the <a target="_blank" href="/survey-student">Ninja Challenge</a></p>
</div>

<!-- temp float project blue area -->

<!-- temp float project blue area closes -->

	<div style="float:left; width: 650px;">

		<div class="message" style="font-size: small; text-align:center ; padding-bottom: 20px;">
		  Click on a project below for details.
		</div>

		<div style="overflow: hidden" id="project-container">
			{foreach from=$projects item=p}
			<div class="btn {$p.Status}" style="text-align:center; width:500px; margin-bottom: 10px; font-size: small; float:left">
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
			<div style="clear:both"></div>
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

<div id="projects-neeche" style="text-align:center; width:100px; height:150px; position:fixed; bottom:10px; left:0; margin:0; padding:0">	
	<img src="img/scroll-down-for-project.png" style="height:65%"/>
	<br/>
	<img src="img/arrow-animated.gif" style="height:30%"/>
</div>
<script type="text/javascript">
{literal}
$(document).ready(function(){
	$('#footer').bind('inview', function (event, visible) {
	//alert("m here");
		if (visible == true) {
			$("#projects-neeche").hide('slow');
			//alert("visible");
		} else {
			// element has gone out of viewport
			$("#projects-neeche").show();
			//alert("non visible");
		}
	});	
});
{/literal}
</script>
<script type="text/javascript" src="js/jquery.inview.js"></script>
