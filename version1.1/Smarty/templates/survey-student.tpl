
<div style="width:80%; margin: 0 auto; text-align:left">
	<h3>If you are a seasoned programmer</h3>
	<p>Solve the <strong>Task</strong> mentioned in <strong>any of the project</strong> below. Mail the solution to admin@stalkninja.com.</p>
	<p style="font-size:small; text-align:center">To see the task, go to the project by clicking on one of the link below</p>

		<div style="overflow: hidden" id="project-container">
			{foreach from=$projects item=p}
			<div class="btn {$p.Status}" style="text-align:center">
				<a href="project.php?id={$p.Id}">
				<table style="width:100%; font-size: medium">
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

 <h3>Else</h3>
 <p>Solve <span style="font-weight:bold">both</span> the assignments & let us know at admin@stalkninja.com with the url of both the solutions. </p>

 <p><a class="btn blue" href="http://pocha.posterous.com/assignment-are-you-kidding-0" target="_blank">First Assignment</a></p>
 <p><a class="btn blue" href="http://www.facebook.com/pages/Stalk-Ninja/139273162793864?sk=app_4949752878" target="_blank">Second Assignment</a></p>
 

</div>
