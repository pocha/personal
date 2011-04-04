<?php /* Smarty version 2.6.26, created on 2011-03-23 20:54:17
         compiled from float-project.tpl */ ?>
<div class="box">
<style type="text/css">
<?php echo '
	body {
		background-color: #DCDCDC;
	}
'; ?>

</style>

          <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	  <script type="text/javascript" src="js/jquery.validate.js"></script>

  <script type="text/javascript">
            <?php echo '
    $(document).ready(function() {
	      $("#float-project").validate({
	        rules: {
	          name: "required",
	          email: {
	          required: true,
	          email: true
                      },
                contact: {
                required: true,
                number: true,
                minlength: 10
                },
                name: "required",
                Heading: "required",
                Budget: {
                required: true,
                number: true,
                minlength: 4
                },
                Duration: {
                required: true,
                number: true
                },
                Description: {
                required: true,
                minlength: 250
                },
                Deliverable: {
                required: true,
                },
                Task: {
                required: true
                },
                
	        },
	        messages: {
	          email: "Oops, our bot sniffed an invalid email."
	        ,
                Description: {
                required: "You cant escape this !!",
                minlength: jQuery.format("Mr project creator, we need at least 250 characters here. We know its painful, please bear with us.")
                },
                Deliverable: {
                required: "How can you leave the most crucial part empty. Negative Sir !!!"
                },
                Task: {
                required: "The task is mandatory. Please spare a moment. Need help, call Ashish - 91 95 3838 4545"
                },
                Budget: {
                required: "Sorry, you need to spare some money. Also, we are for-profit (if you have not yet got it)",
                number: "Our system could not understand the amount. It says - you are kidding.",
                minlength: jQuery.format("Hey dint we mention it in code of conduct that minimum budget is Rs 1000.")
                },
                Contact: {
                required: "We love to talk to people. We bore you to death & we wont let you float a project without your contact detail.",
                number: "You must be kidding. This does not look like valid number.",
                minlength: jQuery.format("Guess you forgot area code or something ..")
                } },
	      });
	    });
            '; ?>

	  </script>

<script type="text/javascript">
<?php echo '
 var RecaptchaOptions = {
    theme : \'white\'
 };
 '; ?>

 </script>



<p class="message <?php if ($this->_tpl_vars['error']): ?>error<?php endif; ?>"><?php echo $this->_tpl_vars['message']; ?>
</p>
<h3><?php echo $this->_tpl_vars['heading']; ?>
</h3>
<p>Clueless ? ...  Floating project for the first time ? ... please read <a href="javascript:void(0)" class="terms">how-the-hell-this-thing-works</a>.</p>
<p><span class="message">All fields are compulsory.</p>
<form id="float-project" action="" method=POST onsubmit="return checkCOC()" enctype="multipart/form-data">
<table class="form" style="text-align:left; width: 100%">

	<tr style="display:<?php echo $this->_tpl_vars['top']; ?>
"><td>Company</td><td><input name="name" value="<?php echo $this->_tpl_vars['data']['Name']; ?>
"/></td></tr>

	<tr style="display:<?php echo $this->_tpl_vars['top']; ?>
"><td>Email</td><td><input name="email" value="<?php echo $this->_tpl_vars['data']['email']; ?>
"/></td></tr>
        <tr class="message" style="display:<?php echo $this->_tpl_vars['top']; ?>
"><td colspan="2">Already registered with us? provide the same email. First timer ? no problem, any email would do (we meant your email).</td></tr>

        <tr style="display:<?php echo $this->_tpl_vars['top']; ?>
"><td>Phone</td><td><input name="contact" value="<?php echo $this->_tpl_vars['data']['contact']; ?>
"/></td></tr>

	<tr><td>Project Heading</td><td><input name="Heading" value="<?php echo $this->_tpl_vars['data']['Heading']; ?>
"/></td></tr>
	
	<tr><td>Budget</td><td><input name="Budget" value="<?php echo $this->_tpl_vars['data']['Budget']; ?>
"/></td></tr>
	<tr class="message"><td colspan="2">Minimum budget is Rs 1000.</td></tr>
	
	<tr><td>Duration (days)</td><td><input name="Duration" value="<?php echo $this->_tpl_vars['data']['Duration']; ?>
"/></td></tr>
	<tr class="message"><td colspan="2">Days in which the project needs to be completed from the day of Ninja selection</td></tr>
	
	<tr><td colspan="2">Description<br/><br/><textarea name="Description"><?php echo $this->_tpl_vars['data']['Description']; ?>
</textarea></td></tr>
	<tr class="message"><td colspan="2">Describe the project, The More (exhaustive), The Merrier (better). Word limit - 250 words. Tip: mention links/resources to read up.</td></tr>

	<?php $_from = $this->_tpl_vars['files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['f']):
?>
	<tr><td>Delete attached file <?php echo $this->_tpl_vars['f']; ?>
</td><td><input type="checkbox" name="delete-<?php echo $this->_tpl_vars['f']; ?>
"/></td></tr>
	<?php endforeach; endif; unset($_from); ?>
	
	<tr><td>Attach files (if any)</td><td><input type="file" name="file1"/></td></tr>
	<tr class="message"><td colspan="2">The files would be shown in Attachment section of the project.</td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file2"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file3"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file4"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file5"/></td></tr>

	<tr><td colspan="2">Deliverables<br/><br/><textarea name="Deliverable"><?php echo $this->_tpl_vars['data']['Deliverable']; ?>
</textarea></td></tr>
	<tr class="message"><td colspan="2">Most crucial part. Keep it point-wise. In case of arbitration, the actual deliverables (above) would be compared to the supplied deliverables.</td></tr>
	
	<tr><td colspan="2">Task<br/><br/><textarea name="Task"><?php echo $this->_tpl_vars['data']['Task']; ?>
</textarea></td></tr> 
	<tr class="message"><td colspan="2">Small task relevant to the project. Keep output which is verifiable with a flick of the eye, unlike code checking/compiling.</td></tr>
	
	<tr><td>Skills Required</td><td><input name="Skills" value="<?php echo $this->_tpl_vars['data']['Skills']; ?>
"/></td></tr>
	<tr class="message"><td colspan="2">Pre-requisite skills (if any). Looking to pick someone fresh ? Leave this empty.</td></tr>
	<tr><td style="font-style:italic;"> .. only human ..</td><td><?php echo $this->_tpl_vars['Captcha']; ?>
</td></tr>

	<!--
	<tr><td>Your email, phone number & location</td><td><input name="Contact" value=""/></td></tr>
	<tr class="message"><td colspan="2">We so love talking to people. Its our favorite past time. We will be going to waste your time like anything but your privacy is utmost important to us & hence we do not save this information in our database. If we can't speak to you, your project would never see light here.</td></tr>
	-->
	<tr> <td colspan=2>You have agreed to <a href="javascript:void(0)" class="terms">code of conduct</a> at Stalk Ninja. <input style="width:20px" id="COC" type="checkbox"/></td> </tr>
	
	
	<input type="hidden" name="Status" value=""/>
        <tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
</table>
</form>
</div>

<div id="backgroundPopup"></div>

	<div id="popup" style="text-align:left; top:10%;">
		<a class="popup-close" href="javascript:void(0)">x</a>

		<div class="popup-heading">How to for the project creators</div>
			<ol class="bullets" style="font-size:small">
				<li>Once the project form is submitted, the project would go live. The Ninja(s) in the system would be intimated of it & they would start attempting the task.</li>
				<li>We would review the project against the <a target="_blank" href="http://blog.stalkninja.com/looking-to-float-a-project-with-us-please-rea">guidelines</a>. If it does not conform, the project status is changed to 'pending-approval' or 'under-moderation' depending on severity. Otherwise, the project creator needs to do payment within 24 hours of our intimation failing which the project status changes to 'pending-approval'.</li>
				<li> Payment for the project is project money + 15% premium. If the project creator cancels the project, the project money would be returned but the premium is non-refundable.</li>
				<li> There is a project discussion board where Ninja(s) would ask questions/clarifications. There is an email subscription option to it. Project creators can also use the space to ask questions to one/more Ninja(s). The place is open & messages are globally visible</li>
				<li> Project creator intimate us post zeroing in on a Ninja. A formal approval from the Ninja is sought & post agreement, the contact details are exchanged & the project kicks-off.</li>
				<li> The Ninja needs to complete the task within the project duration from the date of project kick-off, else the money is returned back to the project creator. Post completion, once the project creator okays the deliverable, the project money is released to the Ninja. If the Ninja becomes unresponsive, the project creator can choose to cancel project, or choose another Ninja for the project. A new project deadline would be decided for the latter case. </li>
				<li> It is imperative that all emails floating between project creator & the Ninja should be cced to admin@stalkninja.com . We mediate if we feel either of the party is not behaving fairly to their counterpart.</li>
			</ol>
	
	</div>


<script type="text/javascript">
<?php echo '
	$("a.terms").click(function(){
		$("#backgroundPopup").show();
		$("#popup").show();
	})

	$(".popup-close").click(function(){
		$("#backgroundPopup").hide();
		$("#popup").hide();
	})

	function checkCOC(){
		if ($("#COC").is(":checked")) {
			return true
		}
		else {
			alert("Please read code of conduct & tick the checkbox");
			return false
		}
	}
'; ?>

</script>

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
		font-size: x-large;
		color:black;
	}

	.popup-close {
		position: absolute;
		top: 1em;
		right : 1em;
	}
'; ?>

</style>
