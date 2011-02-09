<?php /* Smarty version 2.6.26, created on 2011-02-09 17:40:15
         compiled from ninja.tpl */ ?>
<div class="wrapper1" style="padding:0 100px;">
   	<h2>Ninja Profile: <?php echo $this->_tpl_vars['ninja']['Name']; ?>
</h2>
    <div id="student_block" style=" border-top: 1px solid black; padding: 0 100px">
			<table>
				<tr>
					<td><img src="img/gaurav.jpg" width="100px"/></td>
					<td><?php echo $this->_tpl_vars['ninja']['Description']; ?>

					</td>
				</tr>
			</table>
    </div>
    
		<div class="rating" style="margin-left: 45px;">
        <p><h3>&nbsp;Overall Rating: <b><?php echo $this->_tpl_vars['ninja']['Rating']; ?>
/10</b> in <?php echo $this->_tpl_vars['ninja']['completedProjectCount']; ?>
 Project(s) &nbsp; &nbsp;&nbsp; &nbsp;Current live Projects: <?php echo $this->_tpl_vars['ninja']['liveProjectCount']; ?>
</h3></p>

    </div>
   <div style="border-top: 1px solid black;"></div>
    <h3 style="text-align: left; padding-left: 40px;  margin-top: 45px;">Projects picked:</h3>

		<div style="overflow: hidden; margin-bottom: 50px" id="project-container">
			
			<?php $_from = $this->_tpl_vars['projects']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['p']):
?>
			<div class="btn <?php echo $this->_tpl_vars['p']['Status']; ?>
" style="text-align:center;">
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
									<td>Floated By: <?php echo $this->_tpl_vars['p']['Startup']['Name']; ?>
</td>
									<td>Floated On: <?php echo $this->_tpl_vars['p']['DateCreated']; ?>
</td>
								</tr>
							</table>
						</td>
					</tr>
						<?php if ($this->_tpl_vars['p']['Status'] == 'completed'): ?>
					<tr>
						<td>Reviews :-</td>
					</tr>
					<tr>
						<td>
							<table>
								<?php if ($this->_tpl_vars['p']['NinjaReview'] && $this->_tpl_vars['p']['StartupReview']): ?>
							<tr>
								<td style="width:50%">
									<a href="ninja.php?id=<?php echo $this->_tpl_vars['ninja']['Id']; ?>
"><?php echo $this->_tpl_vars['ninja']['Name']; ?>
</a>: <?php echo $this->_tpl_vars['p']['NinjaReview']; ?>

									<p>Rated <?php echo $this->_tpl_vars['p']['Startup']['Name']; ?>
 <?php echo $this->_tpl_vars['p']['NinjaRating']; ?>
/10</p>
								</td>
								<td style="width:50%">
									<a href="startup.php?id=<?php echo $this->_tpl_vars['p']['Startup']['Id']; ?>
"><?php echo $this->_tpl_vars['p']['Startup']['Name']; ?>
</a>: <?php echo $this->_tpl_vars['p']['StartupReview']; ?>

									<p>Rated <?php echo $this->_tpl_vars['ninja']['Name']; ?>
 <?php echo $this->_tpl_vars['p']['StartupRating']; ?>
/10</p>
								</td>
							</tr>
								<?php else: ?>
								<tr>
									<td>Reviews between <?php echo $this->_tpl_vars['p']['Startup']['Name']; ?>
 and <?php echo $this->_tpl_vars['ninja']['Name']; ?>
 are not visible yet</td>
								</tr>
								<?php endif; ?>
							</table>
						</td>
					</tr>
						<?php endif; ?>
						</table>
			</div>
			<?php endforeach; endif; unset($_from); ?>
	
	</div>

</div>

