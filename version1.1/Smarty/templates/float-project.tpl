<div style="width:80%; margin:0 auto">
<p class="message {if $error }error{/if}">{$message}</p>
<h3>Enter project details.</h3>
<p>If you are new to the system, its recommended that you go through <a href="javascript:void(0)" class="terms">code of conduct</a> at Stalk Ninja.</p>
<form action="" method=POST onsubmit="return checkCOC()">
<table class="form" style="text-align:left; width: 100%">
	
	<tr><td>Project Heading</td><td><input name="Heading" value="{$data.Heading}"/></td></tr>
	
	<tr><td>Budget</td><td><input name="Budget" value="{$data.Budget}"/></td></tr>
	<tr class="message"><td colspan="2">Money you are looking to offer for the project</td></tr>
	
	<tr><td>Duration (days)</td><td><input name="Duration" value="{$data.Duration}"/></td></tr>
	<tr class="message"><td colspan="2">Days in which you need the project completed from the day you select a Ninja</td></tr>
	
	<tr><td>Description</td><td><textarea name="Description">{$data.Description}</textarea></td></tr>
	<tr class="message"><td colspan="2">You need to be elaborate & provide pointers (links to online resources) if you looking for first timers to pick & deliver, wherever possible.</td></tr>

	<tr><td>Deliverables</td><td><textarea name="Deliverable">{$data.Deliverable}</textarea></td></tr>
	<tr class="message"><td colspan="2">The deliverables which the selected Ninja would need to provide you as part of this project. Make it point-wise.<br/><span class="error">Make sure you are VERY SPECIFIC. In case of an arbitration/conflict, if the deliverables are vague, it WOULD go in favor of the Ninja. Also, we do not approve projects with vague deliverables.</span></td></tr>
	
	<tr><td>Task</td><td><textarea name="Task">{$data.Task}</textarea></td></tr>
	<tr class="message"><td colspan="2">This is like a mini challenge, which Ninja need to solve to be able to compete for the project. We strongly recommend you put one, even if it is as easy as putting up a 'hello world' html page. Check other projects to get a feel of what we are saying.</td></tr>
	
	<tr><td>Skills Required</td><td><input name="Skills" value="{$data.Skills}"/></td></tr>
	<tr class="message"><td colspan="2">Skills you are looking to have in the Ninja who you would select for the project. If you are ok with someone totally new, leave it blank.</td></tr>
	
	<tr> <td><input id="COC" type="checkbox"/></td> <td>You have agreed to <a href="javascript:void(0)" class="terms">code of conduct</a> at Stalk Ninja.</td> </tr>
	
	
	<input type="hidden" name="Status" value=""/>
	<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
	<tr><td colspan="2" class="message">If you would like to upload any files (pertaining to the task or the actual project), please mail them to admin@stalkninja.com & mention the heading as the subject.</td></tr>
</table>
</form>
</div>

<div id="backgroundPopup"></div>

	<div id="popup" style="text-align:left; top:10%;">
		<a class="popup-close" href="javascript:void(0)">x</a>

		<div class="popup-heading">Code Of Conduct at Stalk Ninja</div>
			<ul class="bullets">
				<li>Once a project is floated, you would subscribe to the discussion board comment thread via email & respond to the questions asked there.</li>
				<li>You would do required due diligence, by asking questions on discussion board, to make sure that you are comfortable enough selecting a Ninja.</li>
				<li>Once you select a Ninja, you would deposit the project money in Stalk Ninja account. The money would be released to the Ninja, once he delivers within the project duration & you okay it. Else, it would be refunded back to you.</li>
				<li>Post Ninja selection, you would keep us in loop for all interaction that you do with him, so that we are aware of the proceedings. This is necessary while we check deliverables during arbitration.</li>
				<li>If you are not happy with the Ninja, or he is not responding, you would intimate us at the earliest & we would start the arbitration process. We would check for what all Ninja has delivered against the deliverables of the project & decide on how much money would go to him & how much money would come back to you. Our decision on this would be final.</li>
				<li>You would check all the deliverables before okaying it. Once the project is marked complete & money released, neither us nor the Ninja would be held responsible for any fault/short-coming in the deliverables</li>
			</ul>
	
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

