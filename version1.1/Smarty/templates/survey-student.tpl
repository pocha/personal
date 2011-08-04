
<h2>Ninja Challenge</h2>
<div style="width:960px; margin: 0 auto; ">
	<p style="text-align:left;">Only 3% of college students are able to successfully complete the challenge. If you can solve it, we would let you have a profile <a target="_blank" href="/ninja-list.php">at Wall of Ninjas</a>. Mail your solution to admin@stalkninja.com. If it is a web stuff, upload the solution to your server & pass on the link.</p>
	<p style="font-size: small">If you need help, feel free to call Ashish at 95 3838 4545 or ping him on gtalk at pocha@stalkninja.com.</p>
</div>
<div style="width:80%; margin: 0 auto; text-align:left">
	<h3>If you are a programmer/techie {literal}{{/literal} </h3>
	<p>Complete the Task in one of the projects below. If the project does not have a task, complete the project itself</p>
	<div style="margin-left: 50px">

				<div style="overflow: hidden" id="project-container">
					{foreach from=$projects item=p name=projects}
					<p>
						<a href="/project/{$p.Id}" class="btn blue">{$smarty.foreach.projects.total-$smarty.foreach.projects.index+2}. {$p.Heading}</a>
					</p>
					{/foreach}
					
		</div>
	</div>

 <h3>{literal}} Else {</h3>
 <div style="margin-left: 50px">
	 <p class="message"><a target="_blank" href="http://www.facebook.com/kar2905">Kartik</a> has intimated us that FBML needed for facebook assignment is obsolete now. If you CAN'T get it to work, let us know.</p>

	 <p><a class="btn blue" href="http://pocha.posterous.com/assignment-are-you-kidding-0" target="_blank">2. Create a posterous blog & apply a hack</a></p>
	 <p><a class="btn blue" href="http://www.facebook.com/pages/Stalk-Ninja/139273162793864?sk=app_4949752878" target="_blank">1. Create a facebook page with an About Me tab & show data using FBML tags.</a></p>
 </div>
 <h3> }{/literal} </h3>

</div>
