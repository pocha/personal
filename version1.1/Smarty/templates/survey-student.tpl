
<h2>Ninja Challenge</h2>
<div style="width:80%; margin: 0 auto; text-align:left">
	<h3>If you are a seasoned programmer/techie {literal}{{/literal} </h3>
	<div style="margin-left: 50px">
		<p>Solve task mentioned in ANY ONE of the project below & mail the solution to admin@stalkninja.com . If you need help, feel free to call Ashish at 95 3838 4545 or ping him on gtalk at pocha@stalkninja.com .</p>
		<div class="message" style="font-size: small; text-align:center ; padding: 20px;">
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

 <h3>{literal}} Else {</h3>
 <div style="margin-left: 50px">
	 <p>Solve <span style="font-weight:bold">both</span> the assignments & let us know at admin@stalkninja.com with the url of both the solutions.<p>
	 <p class="message">The task look tech oriented but believe us, it would not require even a single line of coding. It would test your skill of grasping new things, understanding it & successfully implementing it.</p>
	 <p class="message"><a target="_blank" href="http://www.facebook.com/kar2905">Kartik</a> has intimated us that FBML needed for second assignment is obsolete now. If you cant get it to work, let us know.</p>

	 <p><a class="btn blue" href="http://pocha.posterous.com/assignment-are-you-kidding-0" target="_blank">First Assignment</a></p>
	 <p><a class="btn blue" href="http://www.facebook.com/pages/Stalk-Ninja/139273162793864?sk=app_4949752878" target="_blank">Second Assignment</a></p>
 </div>
 <h3> }{/literal} </h3>

</div>
