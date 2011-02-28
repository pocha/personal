<div id="header" class="section" style="height: 300px">
	
	<div class="contents">
		<div class="message" style="color:white; font-size: 20px; text-align:center ; padding: 20px;">
		  Hey students, awesome projects are up for grab. Click on a project below for details.
		</div>

		<div style="height:200px; overflow-y: auto; overflow-x: hidden" id="project-container">
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
			
			<!--
			<div class="btn in-progress" >
				Sample project here
			</div>
			<div class="btn completed" >
				Sample project here
			</div>
			<div class="btn open" >
				Sample project here
			</div>
			<div class="btn completed" >
				Sample project here
			</div>
			<div class="btn blue" >
				Sample project here
			</div>
			-->

		</div>
<script type="text/javascript">
{literal}
	function project_container_mouseover(){
		$(this).unbind("mouseover")
		$(this).css("height","auto")
		$(this).css("overflow-y","hidden")
		$(this).mouseout( project_container_mouseout )
	}
	function project_container_mouseout(){
		$(this).unbind("mouseout")
		$(this).css("height","200px")
		$(this).css("overflow-y","auto")
		$(this).mouseover( project_container_mouseover )
	}

	$("#project-container").mouseover( project_container_mouseover )

{/literal}
</script>
 	</div><!-- /.contents -->
</div><!-- /#header -->

<div style="position:fixed; left:0px; top:30%; z-index:100">
	<iframe src="http://www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FStalk-Ninja%2F139273162793864&amp;layout=box_count&amp;show_faces=true&amp;width=60&amp;action=like&amp;colorscheme=light&amp;height=65" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:60px; height:65px;" allowTransparency="true"></iframe><br/><br/>
	<a href="http://twitter.com/share" class="twitter-share-button" data-url="http://stalkninja.com" data-text="Enabling startups to outsource jobs to students" data-count="vertical" data-via="stalkninja" data-related="pocha">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
</div>


<div style="clear:both"></div>

<div id="wrapper1" style="position:relative">
<!--<img src="img/bg.jpg" style="width:100%; opacity:0.2; position:absolute; top:0px; left:0px; filter:alpha(opacity=20);"/>-->
 <!--<img src="img/bg.jpg" style="width: 1000px; height: 600px; opacity: 0.2; margin: 0 auto"/>-->


<div id="left1">
<div class="section separator postamble inverted colspan">
	<div class="flow">
		<div class="contents">
			<!--<h2 class="block"><span>Are you a Start-up?</span></h2>-->
			
			<div class="primary">
				
			<!--	<div class="parts">
					<ul class="first part checklist">
						<li>You think figuring out right intern/hire is a pain ?</li>
						<li>You feel the need for a start-up oriented freelance community ?</li>
					</ul>
					
						
				</div>
				-->
					<div style="color:black">If you looking to engage some quality hand-picked Ninja(s) to work remotely for you, click the link below.</div>
					
					<div style="position:relative">
						<div style="opacity:0.3; filter:alpha(opacity=30) ">
							<p style="text-align:center"><span class="btn blue" style="font-size:25px;">Interested Startupers click here</span></p>
							<p style="font-size:small">Please note, to maintain quality &amp; prevent abuse, we have a face to face meet with the startup before letting them into the system</p>
						</div>
						<p style="color:red; font-size:small; position:absolute; top:35px;">Due to limited number of Ninja(s) into the system & couple of projects in the pipeline, we are not taking project requests for now.</p> <p>You may write to us at admin@stalkninja.com if you want us to reconsider your request</p>
					</div>
			</div><!-- /.primary-->
		</div><!-- /.contents -->
	</div><!-- /.flow -->
</div><!-- /.section .separator .postamble .info -->

</div><div id="right1">

<div class="section separator postamble inverted colspan">
	<div class="flow">
		<div class="contents">
			
			<div class="primary">
				<!--<div class="parts">
					<ul class="first part checklist">
						<li>You are a passionate student/graduate who knows his way out of any problem ?</li>
						<li>You would like to work with startups, but never got connected to right ones ?</li>
						<li>You love to work on real-life problems &amp; CAN afford to do it all through the year ?</li>
					</ul>
					
				</div>
				<div>If you have checked above options, you could be the next <b>Neo</b> a <b>Morpheus</b> is looking for</div><br/>-->
				<div style="color:black">If you are a <strong>student</strong> &amp; looking to work remotely with startups</div>
						<p style="text-align:center"><a href="student.html" class="btn blue" style="font-size:25px;">Take the Ninja challenge</a></p>
						<p style="text-align:center">OR</p>
						<p><span style="font-size: small;">Pick the easier option.</span> Solve the <strong>Task</strong> mentioned in any of the project & let us know by mailing us at admin@stalkninja.com. We would happily register you in our system.</p>
						<div style="font-size:small; text-align:center">Already {$ninjaCount} Ninja(s) enrolled. Check the list <a href="ninja-list.php">here</a>.<br/> Want to receive updates on projects floated vi email? Subscribe to <a href="http://groups.google.com/group/ninjaclan" target="_blank">ninjaclan@googlegroups.com</a></div><br/>
						<br/>
						
			</div><!-- /.primary-->
		</div><!-- /.contents -->
	</div><!-- /.flow -->
</div>

</div><!-- /.section .separator .postamble .info -->
<div style="clear:both"></div>

