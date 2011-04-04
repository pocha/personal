<div id="header" class="section">
	
	<div class="contents" style="text-align:center;">
		<p style="font-size: 1.5em">Project floating is live. Float a project <a class="btn blue" href="/project/new">here</a>. No registration needed</p>
 	</div><!-- /.contents -->
</div><!-- /#header -->
<!-- temp float project blue area -->
<div id="banner"> 
		<div class="wrapper" style="display: block; overflow: hidden;"> 
		
		
			<div id="feature1" style="width: 45%;"> 
				
			</div> 
 
 
			<div id="button_wrap">
			<div class="btn open" > 
				<a name="" href="http://www.stalkninja.com/project/new">&nbsp; &nbsp; &nbsp; &nbsp; Float a Project &nbsp; &nbsp; &nbsp; &nbsp;</a> 
			</div> <br/><br/>
			<div class="btn open"> 
				<a name="a1" href="http://www.stalkninja.com/survey-student">&nbsp; &nbsp; Take Ninja Challenge &nbsp; </a> 
			</div> 
			
		</div>	
		</div> 
	</div>

<!-- temp float project blue area closes -->
<div style="width:900px; margin:0 auto">
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
