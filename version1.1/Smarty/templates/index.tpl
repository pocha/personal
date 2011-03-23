<div id="header" class="section">
	
	<div class="contents" style="text-align:center;">
		<p style="font-size: 1.5em">Project floating is live. Float a project <a class="btn blue" href="float-project.php">here</a>. No registration needed</p>
 	</div><!-- /.contents -->
</div><!-- /#header -->

<div style="width:900px; margin:0 auto">
<div class="message" style="font-size: small; text-align:center ; padding: 20px;">
		  Click on a project below for details.
		</div>

		<div style="overflow: hidden" id="project-container">
			{foreach from=$projects item=p}
			<div class="btn {$p.Status}" style="text-align:center; width:90%; margin-bottom: 10px; font-size: small">
				<a href="project.php?id={$p.Id}">
				<table style="width:100%;">
					<tr>
						<td>{$p.Heading}</td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td>Status: {$p.Status}</td>
									<td>Floated By: {$p.StartupName}</td>
									<td>Floated On: {$p.DateCreated}</td>
									{if $p.DateCompleted}
									<td>Completed On: {$p.DateCompleted}</td>
									{/if}
								</tr>
							</table>
						</td>
					</tr>
				</table>
				</a>
			</div>
			{/foreach}
			
		</div>
</div>

<div style="clear:both"></div>

<style type="text/css">
{literal}
		.tooltip {
			border-bottom: 0px dotted #000000; color: #000000; outline: none;
			cursor: help; text-decoration: none;
			position: relative;
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
			position: absolute; left: 1em; top: 2em; z-index: 99;
			margin-left: 0; width: 250px; 
		}
		.tooltip:hover img {
			/* border: 0; margin: -10px 0 0 -55px;
		    float: left; position: absolute; */
		}
		.tooltip:hover em {
			font-family: Candara, Tahoma, Geneva, sans-serif; font-size: 1.2em; font-weight: bold;
			display: block; padding: 0.2em 0 0.6em 0;
		}
		.classic { padding: 0.8em 1em; }
		.custom { padding: 0.5em 0.8em 0.8em 2em; }
		* html a:hover { background: transparent; }
		.classic {background: #FFFFAA; border: 1px solid #FFAD33; }
	
		{/literal}
		</style>



<p style="font-size: 2em; font-family:Tahoma">Join Us</p><br/>

<a href="float-project.php" style=" position:relative; left:-30px; text-decoration: none;" class="tooltip"><img src="img/Draft.png" style="height:200px;"/>
<span class="classic" style="color: #000; ">Are you a Startup? Engage best Ninja Talent with you. Float a project with us!!</span></a>
<img style="position:relative; top: -130px; left: -10px" src="img/pitch_arrow.png"/>
<a href="survey-student.php" style="position:relative; left:50px; top: -10px" class="tooltip"><img src="img/sword-battle.jpg" style="height:200px;"/>
<span class="classic" style="color: #000;">Do you feel, you have fighter traits of a Ninja. Take the Ninja Challenge!!</span></a>

<br/><br/>
