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




<div style="padding: 0 100px">
	<div id="student_tag" style=" border-bottom: 1px solid black;">
					<h2 style="float:left; width:80%">{$project.Heading}</h2>
				
				<!--	
					<div id="fb_share_1" style="float: right; margin-left: 10px; margin-top:50px;"><a name="fb_share" type="box_count" share_url="http://stalkninja.com/project.php?id={$project.Id}" href="http://www.facebook.com/sharer.php" onclick="javascript:_gaq.push(['_trackEvent','outbound-article','www.facebook.com/sharer.php']);">Share</a></div><div><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script></div>
					
					<div class="tweetmeme_button" style="float: right; margin-left: 10px; margin-top:50px"><iframe src="http://api.tweetmeme.com/button.js?url=http%3a%2f%2fstalkninja.com%2fproject.php%3fid%3d{$project.Id}&amp;source=stalkninja&amp;style=normal" height="61" width="50" frameborder="0" scrolling="no"></iframe></div>
				-->
					<div style="clear:both"></div>
	</div>
					
          
					<div id="project_table">
                <table class="project_table" width="1000" height="75">
                   
                    <tr>
                        <td><label class="btn {$project.Status}">Status: {$project.Status}</label></td>
                        <td><label>Budget: Rs. {$project.Budget}</label></td>
                        <td><label>Duration: {$project.Duration} days</label></td>
                        <td><label>Floated by: <a href="startup.php?id={$project.StartupId}">{$project.Startup.Name}</a>(Rated {$project.Startup.Rating}/10 in {$project.Startup.projectCount} Project(s)</label></td>
                    </tr></table>
                  <table class="project_table" width="1000" height="50">
                   <tr>
                        <td width="180"><label>Created: {$project.DateCreated}</label></td>
                        <td><label>Awarded on: {if $project.DateAwarded} {$project.DateAwarded } { else }-{/if}</label></td>
                        <td><label>Completed on: {if $project.DateCompleted} {$project.DateCompleted } { else }-{/if}</label></td>
                        
                    </tr>
                </table> 

                <table class="project_table">
                    <tr>
                        <td width="400"><label style="text-align: center;"> Awarded to: {foreach from=$ninja item=n} {if $n.Status}<a href="ninja.php?id={$n.NinjaId}">{$n.Ninja.Name}</a>&nbsp;{/if}{/foreach}</label></td>
                        <td>
																	<div id="fb_share_1" style="float: right; margin-left: 10px;"><a name="fb_share" type="box_count" share_url="http://stalkninja.com/project.php?id={$project.Id}" href="http://www.facebook.com/sharer.php" onclick="javascript:_gaq.push(['_trackEvent','outbound-article','www.facebook.com/sharer.php']);">Share</a></div><div><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script></div>
					
					<div class="tweetmeme_button" style="float: right; margin-left: 10px;"><iframe src="http://api.tweetmeme.com/button.js?url=http%3a%2f%2fstalkninja.com%2fproject.php%3fid%3d{$project.Id}&amp;source=stalkninja&amp;style=normal" height="61" width="50" frameborder="0" scrolling="no"></iframe></div>
													
													<div  class="btn {$project.Status}" style="font-size:26px;" align="center" id="be-a-taker">&nbsp; {if $project.Status == "open"} Click to pick the project {else} The project is closed {/if}&nbsp;</div>

					<div style="clear:both"></div>

												</td>
                      
                    </tr>
                </table>
             
            </div>
            <div class="project_desc" style="text-align: left;  border-top: 1px solid black;">
							
								{if $files|@count > 0 }
								<h3> Attached Files: </h3>
									{foreach from=$files item=f}
										<a target="_blank" href="{$f.path}">{$f.name}</a>&nbsp;
									{/foreach}
								{/if}
								
                <h3> Description: </h3>
								<pre>{$project.Description}</pre>
								{if $project.Deliverable}
								<h3> Deliverable: </h3>
								<pre>{$project.Deliverable}</pre>
								{/if}
								{if $project.Task}
								<h3> Task: </h3>
									<pre>{$project.Task}</pre>
									<p style="color:black">Only those Ninja(s) would be considered for the project who would be able to do the task.</p>
								{/if}

								<div style="font-size:small; font-style:italic">
									<p>As always :-</p>
									<ol>
										<li>Join <a target="_blank" href=http://groups.google.com/group/ninjaclan/subscribe>ninjaclan@goolgegroups.com</a> to get all project updates including this.</li>
										<li>To get updates via sms, join Stalk Ninja SMS Channel by sending sms <span style="color:black">'ON STALKNINJA' (without quotes) to 9870807070</span></li>
									</ol>
								</div>

								
								<h3>Skills Required:</h3>
                <p>{$project.Skills}</p>
                <div style="border-top: 1px solid black;"></div>
									<h3 style="float:left">Takers: </h3>
									<div style="padding-top: 30px">
										<a href="project.php?id={$project.Id}#disqus_thread"><div class="btn blue" style="font-size:26px; float:left; margin-left: 50px" id="discussion-boa">&nbsp;Project Discussion Board&nbsp;</div></a>
										<div class="btn {$project.Status}" style="font-size:26px; margin-left: 100px" id="be-a-taker1">&nbsp; {if $project.Status == "open"} Click to pick the project {else} The project is closed {/if}&nbsp;</div>
				
									
										<div class="tweetmeme_button" style="float:right; margin-left: 10px;"><iframe src="http://api.tweetmeme.com/button.js?url=http%3a%2f%2fstalkninja.com%2fproject.php%3fid%3d{$project.Id}&amp;source=stalkninja&amp;style=normal" height="61" width="50" frameborder="0" scrolling="no"></iframe></div>
										<div id="fb_share_1" style="float: right; margin-left: 10px;"><a name="fb_share" type="box_count" share_url="http://stalkninja.com/project.php?id={$project.Id}" href="http://www.facebook.com/sharer.php" onclick="javascript:_gaq.push(['_trackEvent','outbound-article','www.facebook.com/sharer.php']);">Share</a></div><div><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script></div>
					
										
										<div style="clear:both"></div>

									</div>
									<div style="clear:both"></div>
								</div>
            <div class="project_desc" style="text-align: left; margin-top: 20px"><br/>
<table width="1000" height="100">
										{if $ninja|@count == 0}
											<tr><td>Currently there are no takers</td></tr>
										{else}
										{foreach from=$ninja item=n}
                    <tr class="{$n.Status}">
                        <td><label><a href="ninja.php?id={$n.NinjaId}">{$n.Ninja.Name}</a><br/>Date: {$n.BidDate}</label></td>
                        <td><label>Rated {$n.Ninja.Rating}/10 in {$n.Ninja.projectCount} Project(s)</label></td>
                        <td><label>{$n.Bid}</label></td>

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
							{if $has_review == false}
								<tr><td>There are no visible reviews for the project</td></tr>
							{/if}

							{foreach from=$ninja item=n}
								{if $project.Status == "completed" && $n.NinjaReview && $n.StartupReview }
							<tr>
								<td style="width:50%">
									<a href="ninja.php?id={$n.NinjaId}">{$n.Ninja.Name}</a>: {$n.NinjaReview}
									<p>Rated {$project.Startup.Name} {$n.NinjaRating}/10</p>
								</td>
								<td style="width:50%">
									<a href="startup.php?id={$project.Startup.Id}">{$project.Startup.Name}</a>: {$n.StartupReview}
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
	
<div style="border-top: 1px solid black;"></div>
<div id="project_discussion" style="text-align:left">
	<h3>Project Discussion Board :</h3>
	<p style="font-size:small; font-style:italic; color:black">While authenticating to post a comment, use your email id with which you are registered with us. Else the comment would not be approved. Do NOT use facebook, twitter or any other mode of authentication, use only the 'Guest' option.</p>
				<div id="disqus_thread" style="font-size: small; color:black"></div>
</div>

</div>

					<script type="text/javascript">
{literal}
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = 'adminstalkninja'; // required: replace example with your forum shortname

    // The following are highly recommended additional parameters. Remove the slashes in front to use.
     var disqus_identifier = '{/literal}{$project.Id}{literal}';
    var disqus_url = '{/literal}http://stalkninja.com/project.php?id={$project.Id}{literal}';

    /* * * DON'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();{/literal}
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">StalkNinja's comments powered by <span class="logo-disqus">Disqus</span></a>	


<div id="backgroundPopup1"></div>

	<div id="popup1" style="text-align:left; top:10%;">
		<a class="popup-close" href="javascript:void(0)">x</a>
		<div class="popup-heading">Only a Ninja can pick the project</div>
		<p><strong>If the project has a task</strong>, you can be a Ninja by solving it. Let us know by sending a mail to admin@stalkninja.com with link to your solution <br/><span style="font-size:small"> You might need to upload your solution to your server. If you do not have server space, get it for free <a target="_blank" href="http://www.x10hosting.com">here</a></span>
		</p>
		<p style="text-align:center">OR</p>
		<p><strong>If there is no task in the project</strong> & you have already solved the Ninja Challenge, then send an email from your email registered with us & mention why you want to pick this project. We would show it on the project page.</p>
		<p style="text-align:center">OR</p>
		<p>If you are not a registered Ninja but think that you have everything to do this project,<a href="survey-student.php" target="_blank">Take the Ninja challenge</a> & we would let you compete for the project.</p>
		<!--<div style="margin-top: 10px;">{if $project.Status == "open"} Ready to grab this project!!  See how other Ninjas are competing for this Project,<br/> Move to <a href="project.php?id={$project.Id}#disqus_thread" class="popup-close1">Discussion board</a> {else} The Project has been marked as Closed. Read the one-on-ones happened between Ninjas for this project. <br/> Move to <a href="project.php?id={$project.Id}#disqus_thread" class="popup-close1">Discussion board</a> {/if}</div>-->
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
</div>


