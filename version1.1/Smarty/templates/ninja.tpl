<div class="wrapper1" style="padding:0 100px;">
		<div> 
   		<h2 style="float:left; margin-left:200px">Ninja Profile: {$ninja.Name}</h2>
			<a style="float:left; margin-left: 100px; margin-top:40px" href="ninja-list.php"><div class="btn open" style="text-align:center;">View All Ninja(s)</div></a>
			<div style="clear:both"></div>
		</div>
    <div id="student_block" style=" border-top: 1px solid black; padding: 0 100px">
			<table style="text-align:left">
				<tr>
					<td><a href="{$ninja.FacebookProfileUrl}" target="_blank"><img src="{$ninja.FacebookPicUrl}"  width="100px"/></a></td>
					<td>{$ninja.Description}
					</td>
				</tr>
			</table>
    </div>
    
		<div class="rating" style="margin-left: 45px;">
        <p><h3>&nbsp;Overall Rating: <b>{$ninja.Rating}/10</b> in {$ninja.completedProjectCount} Project(s) &nbsp; &nbsp;&nbsp; &nbsp;Current live Projects: {$ninja.liveProjectCount}</h3></p>

    </div>
   <div style="border-top: 1px solid black;"></div>
    <h3 style="text-align: left; padding-left: 40px;  margin-top: 45px;">Projects picked:</h3>

		<div style="overflow: hidden; margin-bottom: 50px" id="project-container">
			
			{foreach from=$projects item=p}
			<div class="btn {$p.Status}" style="text-align:center;">
				<table style="width:100%; font-size: medium">
					<tr>
						<td><a href="project.php?id={$p.Id}">{$p.Heading}</a></td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td>Status: {$p.Status}</td>
									<td>Floated By: {$p.Startup.Name}</td>
									<td>Floated On: {$p.DateCreated}</td>
								</tr>
							</table>
						</td>
					</tr>
						{if $p.Status == "completed" }
					<tr>
						<td style="text-align:left">Reviews :-</td>
					</tr>
					<tr>
						<td>
							<table style="text-align:left">
								{if $p.NinjaReview && $p.StartupReview }
							<tr>
								<td style="width:50%">
									<a href="ninja.php?id={$ninja.Id}">{$ninja.Name}</a>: {$p.NinjaReview}
									<p>Rated {$p.Startup.Name} {$p.NinjaRating}/10</p>
								</td>
								<td style="width:50%">
									<a href="startup.php?id={$p.Startup.Id}">{$p.Startup.Name}</a>: {$p.StartupReview}
									<p>Rated {$ninja.Name} {$p.StartupRating}/10</p>
								</td>
							</tr>
								{else}
								<tr>
									<td>Reviews between {$p.Startup.Name} and {$ninja.Name} are not visible yet</td>
								</tr>
								{/if}
							</table>
						</td>
					</tr>
						{/if}
						</table>
			</div>
			{/foreach}
	
	</div>

</div>


