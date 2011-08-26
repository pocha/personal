<style type="text/css">
{literal}
		#popup {
	  display: none;
		position: fixed;
		z-index: 10;
		background-color: white;
		top: 10%;
		left: 10%;
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

		#backgroundPopup{
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

	
	.popup-heading {
		width: 90%;
		border-bottom: 1px solid black;
		padding: 0.5em ;
		font-size: x-large;
		color:black;
	}

	.popup-close {
		position: absolute;
		top: 1em;
		right : 1em;
	}
.popup-close1 {
		
	}
{/literal}
</style>




				<!--	
	<div id="student_tag" style=" border-bottom: 1px solid black;">
					<h2 style="float:left; width:80%">{$project.Heading}</h2>
				
					<div id="fb_share_1" style="float: right; margin-left: 10px; margin-top:50px;"><a name="fb_share" type="box_count" share_url="http://stalkninja.com//project/{$project.Id}" href="http://www.facebook.com/sharer.php" onclick="javascript:_gaq.push(['_trackEvent','outbound-article','www.facebook.com/sharer.php']);">Share</a></div><div><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script></div>
					
					<div class="tweetmeme_button" style="float: right; margin-left: 10px; margin-top:50px"><iframe src="http://api.tweetmeme.com/button.js?url=http%3a%2f%2fstalkninja.com%2fproject.php%3fid%3d{$project.Id}&amp;source=stalkninja&amp;style=normal" height="61" width="50" frameborder="0" scrolling="no"></iframe></div>
					<div style="clear:both"></div>
	</div>
				-->
					
          
					<div id="project_table">
                <table class="project_table" width="1000" height="75">
                   
                    <tr>
                        <td><label class="btn {$project.Status}">Status: {$project.Status}</label></td>
                        <td><label>Budget: Rs. {$project.Budget}</label></td>
                        <td><label>Duration: {$project.Duration} days</label></td>
                        <td><label>Floated by: <a href="/startup/{$project.StartupId}">{$project.Startup.Name}</a> {if $project.Startup.projectCount != 0} (Rated {$project.Startup.Rating}/10 in {$project.Startup.projectCount} Project(s)) {else} (No visible rating yet) {/if}</label></td>
                    </tr></table>
                  <table class="project_table" width="1000" height="50">
                   <tr>
                        <td width="180"><label>Created: {$project.DateCreated|date_format:"%a, %B %e, %Y"}</label></td>
                        <td><label>Awarded on: {if $project.DateAwarded} {$project.DateAwarded|date_format:"%a, %B %e, %Y"} { else }-{/if}</label></td>
                        <td><label>Completed on: {if $project.DateCompleted} {$project.DateCompleted|date_format:"%a, %B %e, %Y"} { else }-{/if}</label></td>
                        
                    </tr>
                </table> 

                <table class="project_table">
                    <tr>
												<td style="width:120px">
													<iframe frameborder=0 width=120 height=80 style="margin:0; padding:0" src="/gapi/use-me.php?url=/project/{$project.Id}"></iframe>
												</td>

										{if $project.Status != "under-moderation" && $project.Status != "pending-approval" && $project.Status != "cancelled"}
                        <td width="200"><label style="text-align: center;"> Awarded to: {foreach from=$takers item=n} {if $n.Status}<a href="/ninja/{$n.NinjaId}">{$n.Ninja.Name}</a>&nbsp;{/if}{/foreach}</label></td>
                        <td>
																	<div id="fb_share_1" style="float: right; margin-left: 10px;"><a name="fb_share" type="box_count" share_url="http://stalkninja.com//project/{$project.Id}" href="http://www.facebook.com/sharer.php" onclick="javascript:_gaq.push(['_trackEvent','outbound-article','www.facebook.com/sharer.php']);">Share</a></div><div><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script></div>
					
					<div class="tweetmeme_button" style="float: right; margin-left: 10px;"><iframe src="http://api.tweetmeme.com/button.js?url=http%3a%2f%2fstalkninja.com%2fproject.php%3fid%3d{$project.Id}&amp;source=stalkninja&amp;style=normal" height="61" width="50" frameborder="0" scrolling="no"></iframe></div>
													
													<div  class="btn {$project.Status}" style="font-size:26px;" align="center" id="be-a-taker">&nbsp; {if $project.Status == 'open'}Compete for the project{else}The project is closed{/if}</div>
											{else}
												<span class="{$project.Status}">{$project.Message}</span>
											{/if}

					<div style="clear:both"></div>

												</td>
                      
                    </tr>
                </table>
             
            </div>
            <div class="project_desc" style="text-align: left;  border-top: 1px solid black;">
							
								{if $files|@count > 0 }
								<h3> Attached Files: </h3>
									{foreach from=$files item=f}
										<a target="_blank" href="/{$f.path}">{$f.name}</a>&nbsp;
									{/foreach}
								{/if}
								
                <h3> Description: </h3>
								<div class="para">{$project.Description}</div>
								{if $project.Deliverable}
								<h3> Deliverable: </h3>
								<div class="para">{$project.Deliverable}</div>
								{/if}
								{if $project.Task}
								<h3> Task: </h3>
									<div class="para">{$project.Task}</div>
									<ul style="color:black">
										<li>Only those Ninja(s) would be considered for the project who would be able to do the task.</li>
										<li>If you are attempting the task, drop a comment in the discussion board. Feel free to ask for any help.</li>
										<li>Post task completion, send the code to admin@stalkninja.com & drop a comment on the discussion board of task completion</li>
										<li>If it is a web based task, upload your solution to a free webserver & put the link with your comment on the discussion board</li>
									</ul>
								{/if}

								<div style="font-size:small; font-style:italic">
									<p>As always :-</p>
									<ol>
										<li>Join <a target="_blank" href=http://groups.google.com/group/ninjaclan/subscribe>ninjaclan@goolgegroups.com</a> to get all project updates including this.</li>
										<li>Log onto IRC channel ##sn to discuss any issues with the Admins & fellow Ninjas. Details <a target="_blank" href="http://blog.stalkninja.com/irc-channel-for-ninjas">here</a></li>
									</ol>
								</div>

								
								<h3>Skills Required:</h3>
                <p class="para">{$project.Skills}</p>
								<div style="padding:20px; text-align:center; border-top: 1px solid black;">
										<a href="/project/new"><div class="btn red" style="font-size:26px;">&nbsp;Float a New/Similar Project&nbsp;</div></a>
								</div>
                <div style="border-top: 1px solid black;"></div>
									<h3 style="float:left">Takers: </h3>
									<div style="padding-top: 30px">
										{if $project.Status != "under-moderation" && $project.Status != "pending-approval" && $project.Status != "cancelled"}
										<a href="/project/{$project.Id}#disqus_thread"><div class="btn blue" style="font-size:26px; float:left; margin-left: 50px" id="discussion-boa">&nbsp;Project Discussion Board&nbsp;</div></a>
										{/if}
										 {if $project.Status == "open"}<div class="btn {$project.Status}" style="font-size:26px; margin-left: 100px" id="be-a-taker1">&nbsp; Compete for the project &nbsp;</div>{/if}
				
									
										<div class="tweetmeme_button" style="float:right; margin-left: 10px;"><iframe src="http://api.tweetmeme.com/button.js?url=http%3a%2f%2fstalkninja.com%2fproject.php%3fid%3d{$project.Id}&amp;source=stalkninja&amp;style=normal" height="61" width="50" frameborder="0" scrolling="no"></iframe></div>
										<div id="fb_share_1" style="float: right; margin-left: 10px;"><a name="fb_share" type="box_count" share_url="http://stalkninja.com//project/{$project.Id}" href="http://www.facebook.com/sharer.php" onclick="javascript:_gaq.push(['_trackEvent','outbound-article','www.facebook.com/sharer.php']);">Share</a></div><div><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script></div>
					
										
										<div style="clear:both"></div>

									</div>
									<div style="clear:both"></div>
								</div>
            <div class="project_desc" style="text-align: left; margin-top: 20px"><br/>
<table width="1000" height="100">
										{if $takers|@count == 0}
											<tr><td>Currently there are no takers</td></tr>
										{else}
										<tr style="font-weight:bold">
											<td>Ninja</td><td>Rating</td><td>What he/she has to say</td><!--<td>Task submission</td>-->
										</tr>
										{foreach from=$takers item=n}
                    <tr class="{if $n.Status == 1}completed{else}{/if}">
                        <td><label><a href="/ninja/{$n.NinjaId}">{$n.Ninja.Name}</a><br/>Date: {$n.TakeDate}</label></td>
                        <td><label>{if $n.Ninja.Rating != 0} Rated {$n.Ninja.Rating}/10 in {$n.Ninja.projectCount} Project(s) {else} No visible rating{/if}</label></td>
                        <td><label><pre>{$n.Message}</pre></label></td>
												<!--
												<td>
												{if $project.Status == "in-progress" || $project.Status == "completed"}
													{if $n.files|@count == 0}
														No submission to show
													{else}
														{foreach from=$n.files item=f}
															<a target="_blank" href="{$f.path}">{$f.name}</a>&nbsp;
														{/foreach}
													{/if}
												{else}
													The files are hidden
												{/if}
												</td>
												-->
                    </tr>
										{/foreach}
										{/if}
									 
                </table>
 					</div>
					
					{if $project.Status == "completed" }
					<div class="progress_sheet" style="text-align: left;  border-top: 1px solid black;">
						<h3>Progress Sheet</h3>
						<div style=" width:80%; margin: 0 auto;">
							<div style="border: 1px solid black; height: 400px; overflow-y: auto; font-size:small"><pre>{$project.ProgressSheet}</pre></div>
							<!--<textarea style="height: 100px"></textarea>-->
						</div>
					</div>

					<div class="project_reviews" style="text-align: left;  border-top: 1px solid black;">
						<h3>Reviews:</h3>

						<table style="font-size:medium">
							{if $reviews|@count == 0}
								<tr><td>There are no visible reviews for the project</td></tr>
							{/if}

							{foreach from=$reviews item=n}
								{if $project.Status == "completed" && $n.NinjaReview && $n.StartupReview }
							<tr>
								<td style="width:50%">
									<a href="/ninja/{$n.NinjaId}">{$n.Ninja.Name}</a>: {$n.NinjaReview}
									<p>Rated {$project.Startup.Name} {$n.NinjaRating}/10</p>
								</td>
								<td style="width:50%">
									<a href="/startup/{$project.Startup.Id}">{$project.Startup.Name}</a>: {$n.StartupReview}
									<p>Rated {$n.Ninja.Name} {$n.StartupRating}/10</p>
								</td>
							</tr>
								{else}
								<tr>
									<td>Reviews between {$n.Ninja.Name} and {$project.Startup.Name} are not visible yet</td>
								</tr>
								{/if}
							{/foreach}
						</table>

					</div>
					{/if}
	
{if $project.Status != "under-moderation" && $project.Status != "pending-approval" && $project.Status != "cancelled"}
<div style="border-top: 1px solid black;"></div>
<div id="project_discussion" style="text-align:left">
	<h3>Project Discussion Board :</h3>
				<div id="disqus_thread" style="font-size: small; color:black"></div>
</div>

</div>

					<script type="text/javascript">
{literal}
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'adminstalkninja'; // required: replace example with your forum shortname

    // The following are highly recommended additional parameters. Remove the slashes in front to use.
     var disqus_identifier = '{/literal}{$project.Id}{literal}';
    var disqus_url = '{/literal}http://stalkninja.com//project/{$project.Id}{literal}';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();{/literal}
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">StalkNinja's comments powered by <span class="logo-disqus">Disqus</span></a>	
{/if}

<div id="backgroundPopup1"></div>

	<div id="popup1" style="text-align:left; top:10%;">
		<a class="popup-close" href="javascript:void(0)">x</a>
		<div class="popup-heading">Only a Ninja can pick the project</div>
		<p><strong>If the project has a task</strong>, you can be a Ninja by solving it. Let us know by sending a mail to admin@stalkninja.com with link to your solution <br/><span style="font-size:small"> You might need to upload your solution to your server. If you do not have server space, get it for free <a target="_blank" href="http://www.x10hosting.com">here</a></span>
		</p>
		<p style="text-align:center">OR</p>
		<p><strong>If there is no task in the project</strong> & you have already solved the Ninja Challenge, then send an email from your email registered with us & mention why you want to pick this project. We would show it on the project page.</p>
		<p style="text-align:center">OR</p>
		<p>If you are not a registered Ninja but think that you have everything to do this project,<a href="/survey-student.php" target="_blank">Take the Ninja challenge</a> & we would let you compete for the project.</p>
		<!--<div style="margin-top: 10px;">{if $project.Status == "open"} Ready to grab this project!!  See how other Ninjas are competing for this Project,<br/> Move to <a href="/project/{$project.Id}#disqus_thread" class="popup-close1">Discussion board</a> {else} The Project has been marked as Closed. Read the one-on-ones happened between Ninjas for this project. <br/> Move to <a href="project.php?id={$project.Id}#disqus_thread" class="popup-close1">Discussion board</a> {/if}</div>-->
</div>


<script type="text/javascript">
{literal}
	$("#discussion-board").click(function(){
		$("#backgroundPopup").show();
		$("#popup").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup").hide();
		$("#popup").hide();
	})
{/literal}
{literal}
	$("#be-a-taker").click(function(){
		$("#backgroundPopup1").show();
		$("#popup1").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup1").hide();
		$("#popup1").hide();
	})
{/literal}
{literal}
	$("#be-a-taker1").click(function(){
		$("#backgroundPopup1").show();
		$("#popup1").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup1").hide();
		$("#popup1").hide();
	})
$(".popup-close1").click(function(){
		$("#backgroundPopup1").hide();
		$("#popup1").hide();
	})
{/literal}
</script>


