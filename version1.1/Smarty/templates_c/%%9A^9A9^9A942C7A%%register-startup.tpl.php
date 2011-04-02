<?php /* Smarty version 2.6.26, created on 2011-03-17 04:20:59
         compiled from register-startup.tpl */ ?>
<div style="width:80%; margin:0 auto">
<p class="message <?php if ($this->_tpl_vars['error']): ?>error<?php endif; ?>"><?php echo $this->_tpl_vars['message']; ?>
</p>
<h3>Time to do some hard work & spec out your requirement.</h3>
<p>If you are new to the system, its recommended that you go through <a href="javascript:void(0)" class="terms">code of conduct</a> at Stalk Ninja.</p>
<form action="" method="POST" enctype="multipart/form-data">
<p><?php echo $this->_tpl_vars['successmessage']; ?>
</p>
<table class="form" style="text-align:left; width: 100%">

	<tr><td>Startup Name</td><td><input name="name" value="<?php echo $this->_tpl_vars['data']['name']; ?>
"/></td></tr>
	<tr><td>Email address</td><td><input name="email" value="<?php echo $this->_tpl_vars['data']['email']; ?>
"/></td></tr>
        <tr><td>Project Title</td><td><input name="title" value="<?php echo $this->_tpl_vars['data']['title']; ?>
"/></td></tr>
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
