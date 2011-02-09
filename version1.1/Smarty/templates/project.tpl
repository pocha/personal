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
		font-size: 1em;
	}

	.popup-close {
		position: absolute;
		top: 1em;
		right : 1em;
	}

{/literal}
</style>
	<div id="backgroundPopup"></div>

	<div id="popup">
		<a class="popup-close" href="javascript:void(0)">x</a>
		<div class="popup-heading">Discussion Board</div>
		<div style="position:relative; border: 1px solid black; width: 80%; height: 300px; margin: 0 auto; overflow-y:auto; text-align:left; font-size:small; margin-top: 5px">
<pre>10:28 AM amitvish14: hi
  good moring
10:29 AM me: hey Amit . .good morning
  congrats on your placement
 amitvish14: thanks
 me: actually I would be traveling starting tomorrow ..
10:30 AM I am also working on another web application & hence the stalk ninja thing is not yet gone live .. but i have talked to Gaurav & we would try our best to complete it & put it live by today night or tomorrow
 amitvish14: ok
 me: aap vo bacha hua kaam aaj kar doge, then we have most of the work done & I can then peacefully go off to travel
 amitvish14: ok
		</pre>
		</div>
		<div style="margin-top: 10px; color: red">You are not allowed to post on the discussion board</div>
	</div>			


<div style="padding: 0 100px">
	<div id="student_tag" class="block" style=" border-bottom: 1px solid black;">
					<h2>{$project.Heading}</h2></div>
            <div id="project_table">
                <table class="project_table" width="1000" height="75">
                   
                    <tr>
                        <td><label class="btn {$project.Status}">Status: {$project.Status}</label></td>
                        <td><label>Budget: Rs. {$project.Budget}</label></td>
                        <td><label>Duration: {$project.Duration} days</label></td>
                        <td><label>Floated by: <a href="startup.php?id={$project.StartupId}">{$project.Startup.Name}</a>(Rated {$project.Startup.Rating}/10 in {$project.Startup.projectCount} Project(s)</label></td>
                    </tr>
                   <tr>
                        <td><label>Created: {$project.DateCreated}</label></td>
                        <td><label>Awarded on: {if $project.DateAwarded} {$project.DateAwarded } { else }-{/if}</label></td>
                        <td><label>Completed on: {if $project.DateCompleted} {$project.DateCompleted } { else }-{/if}</label></td>
                    </tr>
                </table>
                <table class="project_table">
                    <tr>
                        <td width="400"><label style="text-align: center;"> Awarded to: {foreach from=$ninja item=n} {if $n.Status}<a href="ninja.php?id={$n.NinjaId}">{$n.Ninja.Name}</a>&nbsp;{/if}{/foreach}</label></td>
                        <td><label>
													<div class="btn {$project.Status}" style="font-size:26px;" align="center">&nbsp; {if $project.Status == "open"} Click to be taker {else} The project is closed {/if}&nbsp;</div>
													</label></td>
                      
                    </tr>
                </table>
             
            </div>
            <div class="project_desc" style="text-align: left;  border-top: 1px solid black;">
                <h3> Description: </h3>
								<p>{$project.Description}</p>
                <h3>Skills Required:</h3>
                <p>{$project.Skills}</p>
                <div style="border-top: 1px solid black;"></div>
									<h3 style="float:left">Takers: </h3>
									<div style="padding-top: 30px">
										<div class="btn blue" style="font-size:26px; float:left; margin-left: 50px" id="discussion-board">&nbsp;Project Discussion Board&nbsp;</div>
										<div class="btn {$project.Status}" style="font-size:26px; margin-left: 100px">&nbsp; {if $project.Status == "open"} Click to be taker {else} The project is closed {/if}&nbsp;</div>
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
</script>
