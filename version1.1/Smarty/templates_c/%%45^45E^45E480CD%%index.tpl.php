<?php /* Smarty version 2.6.26, created on 2011-02-11 13:55:24
         compiled from index.tpl */ ?>
<div id="header" class="section" style="height: 300px">
	
	<div class="contents">
		<div class="message" style="color:white; font-size: 20px; text-align:center ; padding: 20px;">
		  Awesome projects are up for grab. Click on a project below for details.
		</div>

		<div style="height:200px; overflow-y: auto; overflow-x: hidden" id="project-container">
			<?php $_from = $this->_tpl_vars['projects']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['p']):
?>
			<div class="btn <?php echo $this->_tpl_vars['p']['Status']; ?>
" style="text-align:center">
				<a href="project.php?id=<?php echo $this->_tpl_vars['p']['Id']; ?>
">
				<table style="width:100%; font-size: medium">
					<tr>
						<td><?php echo $this->_tpl_vars['p']['Heading']; ?>
</td>
					</tr>
					<tr>
						<td>
							<table>
								<tr>
									<td>Status: <?php echo $this->_tpl_vars['p']['Status']; ?>
</td>
									<td>Floated By: <?php echo $this->_tpl_vars['p']['StartupName']; ?>
</td>
									<td>Floated On: <?php echo $this->_tpl_vars['p']['DateCreated']; ?>
</td>
									<?php if ($this->_tpl_vars['p']['DateCompleted']): ?>
									<td>Completed On: <?php echo $this->_tpl_vars['p']['DateCompleted']; ?>
</td>
									<?php endif; ?>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				</a>
			</div>
			<?php endforeach; endif; unset($_from); ?>
			
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
<?php echo '
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

'; ?>

</script>
 	</div><!-- /.contents -->
</div><!-- /#header -->

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
					<div style="color:black">If you looking to engage some quality hand-picked Ninja(s) to work remotely for you, click the link below.<br/><br/></div>
					&nbsp;&nbsp;&nbsp;<a href="startup.html" class="btn blue" style="font-size:25px; padding: 5px" align="center">Interested Startupers click here</a><br/><br/> <div style="font-size:small">Please note, to maintain quality &amp; prevent abuse, we have a face to face meet with the startup before letting them into the system</div><br/> 
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
				<div style="color:black">If you are a <strong>student</strong> &amp; looking to work remotely with startups</div><br/>
						<a href="student.html" class="btn blue" style="font-size:25px; padding: 5px; margin-left: 40px">Take the Ninja challenge</a>
							<br/><br/>
						<div style="font-size: small">First 25 Ninja(s) will get to be mentored for their first 5 projects by us.</div><br/><br/>
						
			</div><!-- /.primary-->
		</div><!-- /.contents -->
	</div><!-- /.flow -->
</div><!-- /.section .separator .postamble .info -->
</div>
<div style="clear:both"></div>
</div>