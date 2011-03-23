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

<p style="font-size: 2em; font-family:Tahoma">Join Us</p><br/>
<a href="float-project.php" style=" position:relative; left:-30px;"><img src="img/Draft.png" style="height:200px;"/></a>
<img style="position:relative; top: -130px; left: -10px" src="img/pitch_arrow.png"/>
<a href="survey-student.php" style="position:relative; left:50px; top: -10px"><img src="img/sword-battle.jpg" style="height:200px;"/></a>

<br/><br/>
