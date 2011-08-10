<table>
<tr>
	<td>
	<div id="how-it-works" style="position:relative; height: 300px; width: 300px; margin:5% 0 20% 0">

		<img class="main" id="float-project" src="/img/Brainstorming.gif" style="left:70%; top:0"/>
		<img class="arrow" src="/img/arrows/arrow-45.png" style="left:95%;top:5%"/>
		<img class="main" id="approve-project" src="/img/thumbs-up.png" style="left:100%; top:25%"/>
		<img class="arrow" src="/img/arrows/arrow-90.png" style="left:110%;top:45%"/>
		<img class="main" id="deposit-money" src="/img/deposit.png" style="left:100%; top:60%"/>
		<img class="arrow" src="/img/arrows/arrow-135.png" style="left:95%;top:85%"/>
		<img class="main" id="propagate-word" src="/img/propagating-word.png" style="left:75%; top:90%"/>
		<img class="arrow" src="/img/arrows/arrow-180.png" style="left:50%;top:100%"/>
		
		<img class="main" id="project-interaction" src="/img/interaction.png" style="left:30%; top:90%"/>
		<img class="arrow" src="/img/arrows/arrow-225.png" style="left:10%;top:80%"/>

		<img class="main" id="project-kick-off" src="/img/Work_in_progress.svg.png" style="left:0%; top:60%"/>
		<img class="arrow" src="/img/arrows/arrow-270.png" style="left:-10%;top:45%"/>
		<img class="main" id="we-monitor" src="/img/examiner.png" style="height:30%; width:30%;left:-35%; top:40%"/>
		<img class="arrow" src="/img/arrows/arrow-90.png" style="left:10%;top:45%"/>
		<img class="main" id="bug-reporting" src="/img/no-bugs.png" style="left:0%; top:25%"/>
		
		<img class="arrow" src="/img/arrows/arrow-315.png" style="left:10%;top:5%"/>
		<img class="main" id="project-done" src="/img/project-completion.png" style="left:30%; top:0"/>

		<div id="text-holder">
			<h2>Project Life Cycle</h2>
			<p style="font-size:small">Point cursor on images to view description</p>
		</div>

	</div>
	</td>
	<td id="text-div-holder" style="text-align:left; vertical-align:top; width:500px">
	<div id="float-project-text" style="display:none">
			<h3>Project floating - You</h3>
			<ol>
				<li>Brainstorm to create requirement into project</li>
				<li>Provide clear description & crisp deliverable</li>
				<li>A well defined & relevant task helps gauge right Ninja</li>
			</ol>
		</div>
		
		<div id="approve-project-text" style="display:none">
			<h3>Review & Approval - Us</h3>
			<ol>
				<li>Review project for clarity & feasibility</li>
				<li>Intimate of any discrepancy & suggest changes</li>
				<li>Till the time the project needs improvement, the status is put as 'pending approval'</li>
			</ol>
		</div>
	
		<div id="deposit-money-text" style="display:none">
			<h3>Deposit project floating fees - Us</h3>
			<ol>
				<li>Once project is approved, we intimate the project creator with an invoice.</li>
				<li>Project creator needs to deposit 15% of project budget. This is non-refundable project premium.</li>
			</ol>
		</div>

		<div id="propagate-word-text" style="display:none">
			<h3>Getting maximum eye-balls - Us</h3>
			<ol>
				<li>Word is sent to the ninjaclan googlegroup, twitter & facebook page</li>
				<li>Word is also sent to the places where relevant student hacker flock - facebook page, googlegroups & linkedin groups</li>
			</ol>
		</div>

		<div id="project-interaction-text" style="display:none">
			<h3>The Ninja action & closing in on one - You</h3>
			<ol>
				<li>Students & Ninjas start attempting the project task</li>
				<li>They put solution/queries on the discussion board</li>
				<li>You review them to decide on the Ninja</li>
				<li>You can look into the past performance of the Ninja in the system to make the decision. Once you are done, you let us know of your selection.</li>
				<li>An email is being sent for both parties to agree on Terms & Conditions.</li>
				<li>Post approval, project creator deposit rest of the project money with us (escrow) & the project is awarded to the selected Ninja</li>

			</ol>
		</div>

		<div id="project-kick-off-text" style="display:none">
			<h3>Selected Ninja starts working - You</h3>
			<ol>
				<li>The Ninja starts the work & reports to project creator regularly</li>
				<li>In the event of violation of terms, the Ninja is removed from the project & he does not get paid</li>
				<li>In the event of violation of terms by the project creator, the project is treated complete & all the money is released to the Ninja</li>
			</ol>
		</div>
		
		<div id="we-monitor-text" style="display:none">
			<h3>Big daddy watches all projects - Us</h3>
			<ol>
				<li>We monitor all projects personally. All interaction is mandated to be cced to us.</li>
				<li>In the event of dissatisfaction, either parties can raise their voice & we give a patient hearing</li>
				<li>Our decision on the project is final</li>
			</ol>
		</div>

		<div id="bug-reporting-text" style="display:none">
			<h3>Timely elimination of bugs - You</h3>
			<ol>
				<li>Project creator timely checks for the delivered work & report bugs</li>
				<li>Its mandatory on the Ninja part to fix them & report back with changes</li>
				<li>The project duration is very strict & all work cum bug fixing needs to be done within the duration. If the work stays incomplete, the Ninja faces monetary penality. There is no extension allowed to the project duration</li>
			</ol>
		</div>
	
		<div id="project-done-text" style="display:none">
			<h3>Hurray, we are done - Us</h3>
			<ol>
				<li>Once project creator okays the deliverables, the work is marked done</li>
				<li>Both parties pass a rating out of 10 & review of the other party to us, which gets published on their respective profiles</li>
				<li>The funds are released to the Ninja & the project is marked closed</li>
			</ol>
		</div>

	</td>
</tr>
</table>

<script type="text/javascript">
	{literal}
	$("#how-it-works img.main").each(
		function(index) {
			id = $(this).attr('id');
			$(this).bind('mouseover',function(){
				hideAll();
				$("#" + $(this).attr('id') + "-text").show();
			});

			$(this).bind('blur', hideAll);
		}
	);
	
	function hideAll() {
		$("#text-div-holder div").each(function(){
			$(this).hide();
		})
		
	}
	{/literal}
</script>
