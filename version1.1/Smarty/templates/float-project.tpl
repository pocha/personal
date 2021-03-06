<div class="box">
<style type="text/css">
{literal}
	body {
		background-color: #EFEFEF;
	}
{/literal}
</style>

	<script type="text/javascript" src="/js/jquery.validate.js"></script>

  <script type="text/javascript">
            {literal}
    $(document).ready(function() {
				
				$("input[type='submit']").click(function() {
					tinyMCE.triggerSave();
				});

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
                required: true,
                minlength: 100
                },
                
	        },
	        messages: {
	          email: "Oops, our system sniffed an invalid email."
	        ,
                Description: {
                required: "No no, we cant let you float a project without description.",
                minlength: jQuery.format("We need at least 250 words here. It does take time, but its worth doing it rather explaining details to each Ninja one on one.")								
                },
                Deliverable: {
                required: "No deliverable == No work. Our system is baffled. Please help it."
                },
                Task: {
                required: "The task is mandatory. Please spare a moment. Need help, call Ashish - 91 95 3838 4545",
                minlength: jQuery.format("We need at least 250 words here.")								
                },
                Budget: {
                required: "Sorry, but all projects at stalk ninja are paid. So no leaving the budget empty.",
                number: "Our system could not understand the amount. It says - you are kidding.",
                minlength: jQuery.format("Hey dint we mention it in <a class='terms'>code of conduct</a> that minimum budget is Rs 1000.")
                },
                Contact: {
                required: "We love to talk to people. We bore you to death & we wont let you float a project without your contact detail.",
                number: "We caught you. It is NaN (not a number)",
                minlength: jQuery.format("Guess you forgot area code or something ..")
                } },
	      });
	    });
            {/literal}
	  </script>

<script type="text/javascript">
{literal}
 var RecaptchaOptions = {
    theme : 'white'
 };
 {/literal}
 </script>



<p class="message {if $error }error{/if}">{$message}</p>
<p><span class="message">All fields are compulsory.</p>
<form id="float-project" action="" method=POST onsubmit="return checkCOC()" enctype="multipart/form-data">
<table class="form" style="text-align:left; width: 100%">

	<tr style="display:{$top}"><td>Company</td><td><input name="name" value="{$data.Name}"/></td></tr>

	<tr style="display:{$top}"><td>Email</td><td><input name="email" value="{$data.email}"/></td></tr>
  <tr class="message" style="display:{$top}"><td colspan="2">Already registered with us? provide the same email. First timer ? no problem, any email would do (we meant your email).</td></tr>

  <tr style="display:{$top}"><td>Phone</td><td><input name="contact" value="{$data.contact}"/></td></tr>
	<tr class="message"><td colspan="2">System do not accept any space. Only numbers (no '+' or anything) - eg 9538384545 . Include country code if outside India.</td></tr>

	<tr><td>Project Heading</td><td><input name="Heading" value="{$data.Heading}"/></td></tr>
	
	<tr><td>Budget</td><td><input name="Budget" value="{$data.Budget}"/></td></tr>
	<tr class="message"><td colspan="2">Minimum budget is Rs 1000. There is 15% premium on top of this budget.</td></tr>
	
	<tr><td>Duration (days)</td><td><input name="Duration" value="{$data.Duration}"/></td></tr>
	<tr class="message"><td colspan="2">Days in which the project needs to be completed from the day of Ninja selection</td></tr>
	
	<tr><td colspan="2">Description<br/><p class="message">Describe the project, The More (exhaustive), The Merrier (better). Minimum 250 words. Tip: mention links/resources for Ninja(s) to read up.</p><textarea name="Description">{$data.Description}</textarea></td></tr>

	{foreach from=$files item=f}
	<tr><td>Delete attached file {$f}</td><td><input type="checkbox" name="delete-{$f}"/></td></tr>
	{/foreach}
	
	<tr><td>Attach files (if any)</td><td><input type="file" name="file1"/></td></tr>
	<tr class="message"><td colspan="2">The files would be shown in Attachment section of the project.</td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file2"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file3"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file4"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file5"/></td></tr>

	<tr><td colspan="2">Deliverables<br/><p class="message">What the Ninja suppose to deliver as part of the project. Most crucial part. Keep it point-wise. In case of arbitration, the actual deliverables (below) would be compared to the supplied deliverables by the Ninja.</p><textarea name="Deliverable">{$data.Deliverable}</textarea></td></tr>
	
	<tr><td colspan="2">Trial Task<br/><p class="message">Select the hardest part of the project & put it up as a trial task. We make it mandatory for Ninja(s) to solve the task to be able to compete for the project. The performance in the task helps you to zero in on a Ninja in the pool of all the Ninja(s) competing for the project.</p><textarea name="Task">{$data.Task}</textarea></td></tr> 
	
	<tr><td>Skills Required</td><td><input name="Skills" value="{$data.Skills}"/></td></tr>
	<tr class="message"><td colspan="2">Pre-requisite skills (if any). Looking to pick someone fresh ? Leave this empty.</td></tr>
	
	<tr><td style="font-style:italic;"> .. only human ..</td><td>{$Captcha}</td></tr>
	<!--

	
	<tr><td>Your email, phone number & location</td><td><input name="Contact" value=""/></td></tr>
	<tr class="message"><td colspan="2">We so love talking to people. Its our favorite past time. We will be going to waste your time like anything but your privacy is utmost important to us & hence we do not save this information in our database. If we can't speak to you, your project would never see light here.</td></tr>
	-->
	<tr> <td colspan=2>You have agreed to the <a href="javascript:void(0)" class="terms">code of conduct</a> at Stalk Ninja. <input style="width:20px" id="COC" type="checkbox"/></td> </tr>
	
	
	<input type="hidden" name="Status" value=""/>
        <tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
</table>
</form>
</div>

<div id="backgroundPopup"></div>

	<div id="popup" style="text-align:left; top:10%;">
		<a class="popup-close" href="javascript:void(0)">x</a>

		<div class="popup-heading">'How-to' cum code of conduct for the project creators</div>
			<ol class="bullets">
				<li>We would review the project against the <a target="_blank" href="http://blog.stalkninja.com/looking-to-float-a-project-with-us-please-rea">guidelines</a>. If it does not conform, the project status will be changed to 'pending-approval' or 'under-moderation' depending on severity. We would intimate you of the same & you need to update the project within 24 hours of the intimation, else the project is canceled.</li>
				<li>Once we approve the project & intimate you of the same with the invoice, the project creator needs to do payment within 24 hours of our intimation failing which the project is canceled.</li>
				<li> Payment for the project is project money + 15% premium. If the project creator cancels the project, the project money would be returned but the premium is non-refundable. You would need to do online transfer to our account (we would furnish you the details) & intimate us with NEFT details.</li>
				<li> There is a project discussion board where Ninja(s) would ask questions/clarifications. <span style="font-weight: bold">Please subscribe to the discussion board via email. The option is on the bottom left of the project page.</span></li>
			</ol>
	
	</div>


<script type="text/javascript">
{literal}
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
{/literal}
</script>

<style type="text/css">
{literal}
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
{/literal}
</style>

