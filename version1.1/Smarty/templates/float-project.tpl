<div style="width:80%; margin:0 auto">

          <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
	  <script type="text/javascript" src="js/jquery.validate.js"></script>

  <script type="text/javascript">
            {literal}
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
	          email: "Please enter a valid email address."
	        ,
                Description: {
                required: "Enter Project Description",
                minlength: jQuery.format("At least {250} characters required!")
                },
                Deliverable: {
                required: "Please mark deliverables clearly"
                },
                Task: {
                required: "The task is mandatory"
                },
                Budget: {
                required: "Enter Project Budget here.",
                number: "Enter a valid Project Budget",
                minlength: jQuery.format("Project can not be less than INR 1000")
                },
                Contact: {
                required: "Enter your Contact Details",
                number: "Enter a valid contact number",
                minlength: jQuery.format("Enter contact number with area code")
                } },
	      });
	    });
            {/literal}
	  </script>





<p class="message {if $error }error{/if}">{$message}</p>
<h3>{$heading}</h3>
<p>If you are new to the system, its recommended that you go through <a href="javascript:void(0)" class="terms">code of conduct</a> at Stalk Ninja.
<br/> All fields are compulsory.</p>
<form id="float-project" action="" method=POST onsubmit="return checkCOC()" enctype="multipart/form-data">
<table class="form" style="text-align:left; width: 100%">

	<tr style="display:{$top}"><td>Startup Name</td><td><input name="name" value="{$data.Name}"/></td></tr>

	<tr style="display:{$top}"><td>Email address</td><td><input name="email" value="{$data.email}"/></td></tr>
        <tr class="message" style="display:{$top}"><td colspan="2">If you are already registered with us, provide email id you used to register with us.</td></tr>

        <tr style="display:{$top}"><td>Contact Number</td><td><input name="contact" value="{$data.contact}"/></td></tr>

	<tr><td>Project Heading</td><td><input name="Heading" value="{$data.Heading}"/></td></tr>
	
	<tr><td>Budget</td><td><input name="Budget" value="{$data.Budget}"/></td></tr>
	<tr class="message"><td colspan="2">Money you are looking to offer for the project. Minimum budget is Rs 1000</td></tr>
	
	<tr><td>Duration (days)</td><td><input name="Duration" value="{$data.Duration}"/></td></tr>
	<tr class="message"><td colspan="2">Days in which you need the project completed from the day you select a Ninja</td></tr>
	
	<tr><td colspan="2">Description<br/><br/><textarea name="Description">{$data.Description}</textarea></td></tr>
	<tr class="message"><td colspan="2">Describe the project, The More (exhaustive), The Merrier (better). Word limit - 250 words. Tip: mention links/resources for the Ninja(s) to read up.</td></tr>

	{foreach from=$files item=f}
	<tr><td>Delete attached file {$f}</td><td><input type="checkbox" name="delete-{$f}"/></td></tr>
	{/foreach}
	
	<tr><td>Attach files (if any)</td><td><input type="file" name="file1"/></td></tr>
	<tr class="message"><td colspan="2">You may choose to attach a file which would show in the Attachment section on the project page.</td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file2"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file3"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file4"/></td></tr>
	<tr><td>Attach files (if any)</td><td><input type="file" name="file5"/></td></tr>

	<tr><td colspan="2">Deliverables<br/><br/><textarea name="Deliverable">{$data.Deliverable}</textarea></td></tr>
	<tr class="message"><td colspan="2">What you expect the selected Ninja to deliver to you. Most crucial part. Keep it crisp & point-wise. In case of arbitration, the actual deliverables (above) would be compared to the supplied deliverables.</td></tr>
	
	<tr><td colspan="2">Task<br/><br/><textarea name="Task">{$data.Task}</textarea></td></tr> 
	<tr class="message"><td colspan="2">Small task relevant to the project which would help you screen Ninja(s) for selection. Specify task output which is verifiable with a flick of the eye, unlike code checking/compiling.</td></tr>
	
	<tr><td>Skills Required</td><td><input name="Skills" value="{$data.Skills}"/></td></tr>
	<tr class="message"><td colspan="2">Skills you are looking to have in the Ninja who you would select for the project. If you are ok with someone totally new, leave it blank.</td></tr>
	<tr><td>Captcha</td><td>{$Captcha}</td></tr>

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

		<div class="popup-heading">8 point Code Of Conduct at Stalk Ninja</div>
			<ol class="bullets" style="font-size:small">
				<li>If you floating project for the first time, please fill in your contact details. We would like to talk to you before we approve your project.</li>
				<li>We take responsibility of your project getting done. We charge a premium of 15% project money for the same. <strong>The charge is over & above the project budget & you would need to bear the same</strong>. The minimum budget we accept is Rs 1000 (exclusive of the premium).</li>
				<li>After making sure the project meets the required standard, we would intimate you. The project would go live once you have deposit the project money plus premium with us. We follow escrow process, where after completion of the project & you okaying the deliverable, the money would be released to the Ninja. If you choose to cancel project for any reason, the project money would be refunded back. The premium is non-refundable & would be treated as project cancellation fees.</li>
				<li>Once a project is floated, you would need to subscribe to the discussion board comment thread via email & respond to the questions asked there by students.</li>
				<li>You would do required due diligence, by asking questions on discussion board, to make sure that you are comfortable enough selecting a Ninja.</li>
				<li>Post Ninja selection, you would keep us in loop for all interaction that you do with him, so that we are aware of the proceedings. This is necessary while we check deliverables during arbitration.</li>
				<li>If you are not happy with the Ninja, or he is not responding, you would intimate us at the earliest & we would start the arbitration process. We would check for what all Ninja has delivered against the deliverables of the project & decide on how much money would go to him. <strong>We would decide a new timeline & would take responsibility to complete rest of the deliverables by then, failing which, we would refund you double of the remaining amount.</strong></li>
				<li>You would check all the deliverables before okaying it. Once the project is marked complete & money released, neither us nor the Ninja would be held responsible for any fault/short-coming in the deliverables</li>
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

