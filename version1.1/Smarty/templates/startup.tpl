<div class="wrapper1" style="padding:0 100px;">
   	<h2>Startup Profile: {$startup.Name}</h2>
    <div id="student_block" style=" border-top: 1px solid black; padding: 0 100px">
			<table style="text-align: left">
				<tr>
					<td><img src="img/gaurav.jpg" width="100px"/></td>
					<td>{$startup.Description}
					</td>
				</tr>
			</table>
    </div>
    
		<div class="rating" style="margin-left: 45px;">
        <p><h3>&nbsp;Overall Rating: <b>{$startup.Rating}/10</b> in {$startup.completedProjectCount} Project(s) &nbsp; &nbsp;&nbsp; &nbsp;Current live Projects: {$startup.liveProjectCount}</h3></p>

    </div>
   <div style="border-top: 1px solid black;"></div>
    <h3 style="text-align: left; padding-left: 40px;  margin-top: 45px;">Projects Floated:</h3>

		<div style="overflow: hidden; margin-bottom: 50px" id="project-container">
			
			{foreach from=$projects item=p}
			<div class="btn {$p.Status}" style="text-align:center;">
				<table style="width:100%; font-size: medium">
					<tr>
						<td>{$p.Heading}</td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td>Status: {$p.Status}</td>
									<td>Floated On: {$p.DateCreated}</td>
								</tr>
							</table>
						</td>
					</tr>
						{if $p.Status == "completed" }
					<tr>
						<td>Reviews :-</td>
					</tr>
					<tr>
						<td>
							<table>
							{foreach from=$p.Ninja item=n}
								{if $n.NinjaReview && $n.StartupReview }
							<tr>
								<td style="width:50%">
									<a href="ninja.php?id={$n.Ninja.Id}">{$n.Ninja.Name}</a>: {$n.NinjaReview}
									<p>Rated {$startup.Name} {$n.NinjaRating}/10</p>
								</td>
								<td style="width:50%">
									<a href="startup.php?id={$startup.Id}">{$startup.Name}</a>: {$n.StartupReview}
									<p>Rated {$n.Ninja.Name} {$n.StartupRating}/10</p>
								</td>
							</tr>
								{else}
								<tr>
									<td>Reviews between {$n.Ninja.Name} and {$startup.Name} are not visible yet</td>
								</tr>
								{/if}
							{/foreach}
							</table>
						</td>
					</tr>
						{/if}
						</table>
			</div>
			{/foreach}
	
	</div>

</div>


