<?php /* Smarty version 2.6.26, created on 2011-02-11 22:18:37
         compiled from project.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', 'project.tpl', 181, false),)), $this); ?>
<style type="text/css">
<?php echo '
		#popup {
	  display: none;
		position: fixed;
		z-index: 10;
		background-color: white;
		top: 10%;
		left: 10%;
		width: 70%;
		max-height: 80%;
		overflow-y:auto;
	border:1px solid rgba(0,0,0,0.4);
	-moz-border-radius: 5px;
	-moz-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	-webkit-border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	padding: 1em;
	padding-top: 0;
	}

		#backgroundPopup{
			display:none;
			position:fixed;
			_position:absolute; /* hack for internet explorer 6*/
			height:100%;
			width:100%;
			top:0;
			left:0;
			background:#000000;
			border:1px solid #cecece;
			z-index:1;
			opacity: 0.7;
		}

	
	.popup-heading {
		width: 90%;
		border-bottom: 1px solid black;
		padding: 0.5em ;
		font-size: 1em;
	}

	.popup-close {
		position: absolute;
		top: 1em;
		right : 1em;
	}
.popup-close1 {
		
	}
'; ?>

</style>
<style>
<?php echo '
		#popup1 {
                display: none;
		position: fixed;
		z-index: 10;
		background-color: white;
		top: 20%;
		left: 15%;
		width: 70%;
		max-height: 80%;
		overflow-y:auto;
	border:1px solid rgba(0,0,0,0.4);
	-moz-border-radius: 5px;
	-moz-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	-webkit-border-radius: 5px;
	-webkit-box-shadow: 0px 0px 2px rgba(0,0,0,0.5);
	padding: 1em;
	padding-top: 0;
	}

		#backgroundPopup1{
			display:none;
			position:fixed;
			_position:absolute; /* hack for internet explorer 6*/
			height:100%;
			width:100%;
			top:0;
			left:0;
			background:#000000;
			border:1px solid #cecece;
			z-index:1;
			opacity: 0.7;
		}


'; ?>

</style>
	<!-- <div id="backgroundPopup"></div>

	<div id="popup">
		<a class="popup-close" href="javascript:void(0)">x</a>
		<div class="popup-heading">Discussion Board</div>
		<div style="position:relative; border: 1px solid black; width: 80%; height: 300px; margin: 0 auto; overflow-y:auto; text-align:left; font-size:small; margin-top: 5px">
<pre>10:28 AM amitvish14: hi
  good moring
10:29 AM me: hey Amit . .good morning
  congrats on your placement
 amitvish14: thanks
 me: actually I would be traveling starting tomorrow ..
10:30 AM I am also working on another web application & hence the stalk ninja thing is not yet gone live .. but i have talked to Gaurav & we would try our best to complete it & put it live by today night or tomorrow
 amitvish14: ok
 me: aap vo bacha hua kaam aaj kar doge, then we have most of the work done & I can then peacefully go off to travel
 amitvish14: ok
		</pre>
		</div>
		<div style="margin-top: 10px; color: red">You are not allowed to post on the discussion board</div>
	</div>	-->

<div id="backgroundPopup1"></div>

	<div id="popup1">
		<a class="popup-close" href="javascript:void(0)">x</a>
		<div class="popup-heading"><?php if ($this->_tpl_vars['project']['Status'] == 'open'): ?>Want to be a taker! <?php else: ?> Oops.. the project has already been completed<?php endif; ?></div>
		<div style="position:relative; border: 1px solid black; width: 80%; height: 210px; margin: 0 auto; overflow-y:auto; text-align:left; font-size:small; margin-top: 5px">
<pre>
 Want to grab this project? Fill the <a href="#">Ninja Profile Form</a> if you have already taken
 Ninja Challenge and we will create a profile for you and then in a mail to
 <b style="color: #000;">admin@stalkninja</b> tell us why we should select you for this task. Remember, while
 sending mail use same mail id that you used while submitting Ninja Challenege.

 For others, what are you waiting for?

                <a href="student.html" class="btn blue" style="font-size:25px; padding: 5px; margin-left: 40px">Take the Ninja challenge</a>
		</pre>
		</div>
		<div style="margin-top: 10px; color: red"><?php if ($this->_tpl_vars['project']['Status'] == 'open'): ?> Ready to grab this project!!  See how other Ninjas are competing for this Project,<br/> Move to <a href="project.php?id=<?php echo $this->_tpl_vars['project']['Id']; ?>
#disqus_thread" class="popup-close1">Discussion board</a> <?php else: ?> The Project has been marked as Closed. Read the one-on-ones happened between Ninjas for this project. <br/> Move to <a href="project.php?id=<?php echo $this->_tpl_vars['project']['Id']; ?>
#disqus_thread" class="popup-close1">Discussion board</a> <?php endif; ?></div>
	</div>


<div style="padding: 0 100px">
	<div id="student_tag" class="block" style=" border-bottom: 1px solid black;">
					<h2><?php echo $this->_tpl_vars['project']['Heading']; ?>
</h2></div>
            <div id="project_table">
                <table class="project_table" width="1000" height="75">
                   
                    <tr>
                        <td><label class="btn <?php echo $this->_tpl_vars['project']['Status']; ?>
">Status: <?php echo $this->_tpl_vars['project']['Status']; ?>
</label></td>
                        <td><label>Budget: Rs. <?php echo $this->_tpl_vars['project']['Budget']; ?>
</label></td>
                        <td><label>Duration: <?php echo $this->_tpl_vars['project']['Duration']; ?>
 days</label></td>
                        <td><label>Floated by: <a href="startup.php?id=<?php echo $this->_tpl_vars['project']['StartupId']; ?>
"><?php echo $this->_tpl_vars['project']['Startup']['Name']; ?>
</a>(Rated <?php echo $this->_tpl_vars['project']['Startup']['Rating']; ?>
/10 in <?php echo $this->_tpl_vars['project']['Startup']['projectCount']; ?>
 Project(s)</label></td>
                    </tr></table>
                  <table class="project_table" width="1000" height="50">
                   <tr>
                        <td width="180"><label>Created: <?php echo $this->_tpl_vars['project']['DateCreated']; ?>
</label></td>
                        <td><label>Awarded on: <?php if ($this->_tpl_vars['project']['DateAwarded']): ?> <?php echo $this->_tpl_vars['project']['DateAwarded']; ?>
 <?php else: ?>-<?php endif; ?></label></td>
                        <td><label>Completed on: <?php if ($this->_tpl_vars['project']['DateCompleted']): ?> <?php echo $this->_tpl_vars['project']['DateCompleted']; ?>
 <?php else: ?>-<?php endif; ?></label></td>
                        
                    </tr>
                </table> 

                <table class="project_table">
                    <tr>
                        <td width="400"><label style="text-align: center;"> Awarded to: <?php $_from = $this->_tpl_vars['ninja']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['n']):
?> <?php if ($this->_tpl_vars['n']['Status']): ?><a href="ninja.php?id=<?php echo $this->_tpl_vars['n']['NinjaId']; ?>
"><?php echo $this->_tpl_vars['n']['Ninja']['Name']; ?>
</a>&nbsp;<?php endif; ?><?php endforeach; endif; unset($_from); ?></label></td>
                        <td><label>
													<div class="btn <?php echo $this->_tpl_vars['project']['Status']; ?>
" style="font-size:26px;" align="center" id="be-a-taker">&nbsp; <?php if ($this->_tpl_vars['project']['Status'] == 'open'): ?> Click to be taker <?php else: ?> The project is closed <?php endif; ?>&nbsp;</div>
													</label></td>
                      
                    </tr>
                </table>
             
            </div>
            <div class="project_desc" style="text-align: left;  border-top: 1px solid black;">
                <h3> Description: </h3>
								<p><?php echo $this->_tpl_vars['project']['Description']; ?>
</p>
                <h3>Skills Required:</h3>
                <p><?php echo $this->_tpl_vars['project']['Skills']; ?>
</p>
                <div style="border-top: 1px solid black;"></div>
									<h3 style="float:left">Takers: </h3>
									<div style="padding-top: 30px">
										<a href="project.php?id=<?php echo $this->_tpl_vars['project']['Id']; ?>
#disqus_thread"><div class="btn blue" style="font-size:26px; float:left; margin-left: 50px" id="discussion-boa">&nbsp;Project Discussion Board&nbsp;</div></a>
										<div class="btn <?php echo $this->_tpl_vars['project']['Status']; ?>
" style="font-size:26px; margin-left: 100px" id="be-a-taker1">&nbsp; <?php if ($this->_tpl_vars['project']['Status'] == 'open'): ?> Click to be taker <?php else: ?> The project is closed <?php endif; ?>&nbsp;</div>
									</div>
									<div style="clear:both"></div>
								</div>
            <div class="project_desc" style="text-align: left; margin-top: 20px"><br/>
<table width="1000" height="100">
										<?php if (count($this->_tpl_vars['ninja']) == 0): ?>
											<tr><td>Currently there are no takers</td></tr>
										<?php else: ?>
										<?php $_from = $this->_tpl_vars['ninja']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['n']):
?>
                    <tr class="<?php echo $this->_tpl_vars['n']['Status']; ?>
">
                        <td><label><a href="ninja.php?id=<?php echo $this->_tpl_vars['n']['NinjaId']; ?>
"><?php echo $this->_tpl_vars['n']['Ninja']['Name']; ?>
</a><br/>Date: <?php echo $this->_tpl_vars['n']['BidDate']; ?>
</label></td>
                        <td><label>Rated <?php echo $this->_tpl_vars['n']['Ninja']['Rating']; ?>
/10 in <?php echo $this->_tpl_vars['n']['Ninja']['projectCount']; ?>
 Project(s)</label></td>
                        <td><label><?php echo $this->_tpl_vars['n']['Bid']; ?>
</label></td>

                    </tr>
										<?php endforeach; endif; unset($_from); ?>
										<?php endif; ?>
									 
                </table>
 					</div>
					
					<?php if ($this->_tpl_vars['project']['Status'] == 'completed'): ?>
					<div class="progress_sheet" style="text-align: left;  border-top: 1px solid black;">
						<h3>Progress Sheet</h3>
						<div style=" width:80%; margin: 0 auto;">
							<div style="border: 1px solid black; height: 400px; overflow-y: auto; font-size:small"><pre><?php echo $this->_tpl_vars['project']['ProgressSheet']; ?>
</pre></div>
							<!--<textarea style="height: 100px"></textarea>-->
						</div>
					</div>

					<div class="project_reviews" style="text-align: left;  border-top: 1px solid black;">
						<h3>Reviews:</h3>

						<table style="font-size:medium">
							<?php if ($this->_tpl_vars['has_review'] == false): ?>
								<tr><td>There are no visible reviews for the project</td></tr>
							<?php endif; ?>

							<?php $_from = $this->_tpl_vars['ninja']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['n']):
?>
								<?php if ($this->_tpl_vars['project']['Status'] == 'completed' && $this->_tpl_vars['n']['NinjaReview'] && $this->_tpl_vars['n']['StartupReview']): ?>
							<tr>
								<td style="width:50%">
									<a href="ninja.php?id=<?php echo $this->_tpl_vars['n']['NinjaId']; ?>
"><?php echo $this->_tpl_vars['n']['Ninja']['Name']; ?>
</a>: <?php echo $this->_tpl_vars['n']['NinjaReview']; ?>

									<p>Rated <?php echo $this->_tpl_vars['project']['Startup']['Name']; ?>
 <?php echo $this->_tpl_vars['n']['NinjaRating']; ?>
/10</p>
								</td>
								<td style="width:50%">
									<a href="startup.php?id=<?php echo $this->_tpl_vars['project']['Startup']['Id']; ?>
"><?php echo $this->_tpl_vars['project']['Startup']['Name']; ?>
</a>: <?php echo $this->_tpl_vars['n']['StartupReview']; ?>

									<p>Rated <?php echo $this->_tpl_vars['n']['Ninja']['Name']; ?>
 <?php echo $this->_tpl_vars['n']['StartupRating']; ?>
/10</p>
								</td>
							</tr>
								<?php else: ?>
								<tr>
									<td>Reviews between <?php echo $this->_tpl_vars['n']['Ninja']['Name']; ?>
 and <?php echo $this->_tpl_vars['project']['Startup']['Name']; ?>
 are not visible yet</td>
								</tr>
								<?php endif; ?>
							<?php endforeach; endif; unset($_from); ?>
						</table>

					</div>
					

</div>
					<?php endif; ?>
				<div id="disqus_thread"></div>

					<script type="text/javascript">
<?php echo '
    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
    var disqus_shortname = \'adminstalkninja\'; // required: replace example with your forum shortname

    // The following are highly recommended additional parameters. Remove the slashes in front to use.
     var disqus_identifier = \''; ?>
<?php echo $this->_tpl_vars['project']['Id']; ?>
<?php echo '\';
    var disqus_url = \''; ?>
http://stalkninja.com/project.php?id=<?php echo $this->_tpl_vars['project']['Id']; ?>
<?php echo '\';

    /* * * DON\'T EDIT BELOW THIS LINE * * */
    (function() {
        var dsq = document.createElement(\'script\'); dsq.type = \'text/javascript\'; dsq.async = true;
        dsq.src = \'http://\' + disqus_shortname + \'.disqus.com/embed.js\';
        (document.getElementsByTagName(\'head\')[0] || document.getElementsByTagName(\'body\')[0]).appendChild(dsq);
    })();'; ?>

</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">StalkNinja's comments powered by <span class="logo-disqus">Disqus</span></a>	

<script type="text/javascript">
<?php echo '
	$("#discussion-board").click(function(){
		$("#backgroundPopup").show();
		$("#popup").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup").hide();
		$("#popup").hide();
	})
'; ?>

<?php echo '
	$("#be-a-taker").click(function(){
		$("#backgroundPopup1").show();
		$("#popup1").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup1").hide();
		$("#popup1").hide();
	})
'; ?>

<?php echo '
	$("#be-a-taker1").click(function(){
		$("#backgroundPopup1").show();
		$("#popup1").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup1").hide();
		$("#popup1").hide();
	})
$(".popup-close1").click(function(){
		$("#backgroundPopup1").hide();
		$("#popup1").hide();
	})
'; ?>

</script>