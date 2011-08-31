	<script type="text/javascript" src="js/jquery.easing.1.3.min.js"></script>	
	
	<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
		<script type="text/javascript">
		{literal}
			// initialize slideshow (Cycle)
			$(document).ready(function() {
				if ($('#Slides').length > 0) {
					$('#Slides').cycle({ 
						fx: 'scrollHorz',
						speed: 750,
						timeout: 10000, 
						randomizeEffects: false, 
						easing: 'easeOutCubic',
						next:   '.slideNext', 
						prev:   '.slidePrev',
						pager:  '#slidePager',
						cleartypeNoBg: true
					});
				}
			});
		{/literal}
		</script>

<style type="text/css">
{literal}
#slidePager a, #slidePager a:visited {
    background: url("img/slide-pager.png") no-repeat scroll 0 0 transparent;
    float: left;
    height: 15px;
    overflow: hidden;
    text-decoration: none;
    text-indent: -1234px;
    width: 16px;
}
#slidePager a.activeSlide {
    background-position: -32px 0;
}
#slidePager {
    float: right;
    margin: 0 -35px 0 0;
    top: -450px;
}

a.slideNext {
    background: url("img/slide-next.png") no-repeat scroll 0 0 transparent;
    float: right;
    margin: 0 11px;
}
a.slidePrev, a.slideNext {
    display: block;
    height: 64px;
    top: -235px;
    width: 51px;
    z-index: 30;
}
a.slidePrev {
    background: url("img/slide-previous.png") no-repeat scroll 0 0 transparent;
    float: left;
    margin: 0 0 0 11px;
}
a.slidePrev:hover, a.slideNext:hover {
  background-position: 0 -64px;
}
a.slidePrev, a.slideNext {
  outline: 0;
}
#Slideshow {
    height: 450px;
    overflow: hidden;
}
#SlideTop, #SlideRepeat, #SlideBottom, .slidePrev, .slideNext, #slidePager {
    position: relative;
    z-index: 29;
}
#SlideTop {
    background: url("img/section-top.png") no-repeat scroll 0 0 transparent;
    height: 10px;
		margin-bottom: 20px;
    overflow: hidden;
		margin-left:-30px
}
#SlideRepeat {
    height: 301px;
    overflow: hidden;
}
#SlideBottom {
    height: 55px;
    overflow: hidden;
		margin-left:-30px
}
#Showcase, #Slides {
    margin: 0 26px;
    width: 938px;
}
#Slides {
    height: 400px;
    margin-bottom: 18px;
    margin-top: -360px;
    overflow: hidden;
}
	.quote {
    background: url("img/quote-big-repeat.gif") repeat-y scroll 0 0 transparent;
    width: 400px;
}
#testimonials {
    color: #595959;
    font: 13px/1.4 "Trebuchet MS",Arial,Helvetica,sans-serif;
		width:990px; 
		margin: 0 auto;
		text-align: left;
}

.quote-container {
	margin-left: 45px;
	float:left;
	max-width: 400px;
}

.quote .quoteBox-1 {
    background: url("img/quote-big-top.gif") no-repeat scroll 0 0 transparent;
    padding: 17px 0 0;
}
.quote .quoteBox-1 .quoteBox-2 {
    background: url("img/quote-big-bottom.gif") no-repeat scroll 0 100% transparent;
    padding: 0 0 24px;
}
.quote p {
    color: #000000;
    font-size: 1.1em;
    font-style: italic;
    line-height: 1.7;
    margin: 0;
    min-height: 25px;
    padding: 0 22px 1.2em;
		background-color: inherit;
}
.quoteAuthor {
    padding: 0 0 1em 100px;
}
.quoteAuthor p.name {
    color: #000000;
    font-size: 1.1em;
    font-weight: bold;
    margin: 0;
}
#testimonials .details {
    font-size: 0.9em;
    font-style: italic;
		color: #ABABAB
}
{/literal}
</style>

<div id="testimonials">
	<div id="Slideshow">
			<div id="SlideTop"></div>
	<h2>What project creators & doers say :-</h2>
			<div id="SlideRepeat"></div>
			<div id="SlideBottom"></div>
			<div id="Slides">
				{foreach from=$reviews item=r }
				<div width="948" height="341" alt="Slide 1" >
	<!-- jQuery framework and utilities -->
	
				 <h3 style="text-align:center; margin-top:0"><a href="/project/{$r.Id}">{$r.Heading}</a></h3>

					<div class="quote-container">
						<div class="quote">
												<div class="quoteBox-1">
													<div class="quoteBox-2">
														<p>
															{if $r.StartupReview|strlen > 300}
																{$r.StartupReview|truncate:300} <span class="details">more on project page</span>
															{else}
																{$r.StartupReview}
															{/if}
														</p>
													</div>
												</div>
											</div>
						<div class="quoteAuthor">
						<p class="name">{$r.StartUp.PersonName}, {$r.StartUp.Designation}, {$r.StartUp.Name}</p>
						<p class="details">Winded {$r.StartUp.TotalProjects} projects of total worth INR {$r.StartUp.TotalWorth}</p>
						</div>
					</div>
					<div class="quote-container">
						<div class="quote">
												<div class="quoteBox-1">
													<div class="quoteBox-2">
														<p>
															{if $r.NinjaReview|strlen > 300}
																{$r.NinjaReview|truncate:300} <span class="details">more on project page</span>
															{else}
																{$r.NinjaReview}
															{/if}

														</p>
													</div>
												</div>
											</div>
						<div class="quoteAuthor">
						<p class="name">{$r.Ninja.Name}, {$r.Ninja.Year}, {$r.Ninja.College}</p>
						<p class="details">Has rating {$r.Ninja.Rating}, {$r.Ninja.TotalProjects} projects completed, INR {$r.Ninja.TotalEarned} cash earned</p>
						</div>

					</div>
					<div style="clear:both"></div>
				
				</div>
				{/foreach}

			</div>
			<a href="#" class="slidePrev"></a>
			<a href="#" class="slideNext"></a>
			<div id="slidePager"></div>
		</div>
<div style='background: url("img/section-top.png") no-repeat scroll 0 0 transparent; height: 20px;'></div>
</div>

