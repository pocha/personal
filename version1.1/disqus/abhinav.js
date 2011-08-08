jQuery(document).ready(function() {
	$('#dsq-combo-recent .dsq-clearfix').each(function(){
		$('#mycarousel').append("<li>" + $(this).html() + "</li>");
	});
	
    jQuery('#mycarousel').jcarousel({vertical: true, scroll: -1, auto: 2, wrap: "circular", animation: "slow",  initCallback: carousel_callback});
});

function carousel_callback(carousel, state) {
	$("#tab-recent").click(function() {
		carousel.reset();
		var i=1;
		$('#dsq-combo-recent .dsq-clearfix').each(function(){
			carousel.add(i, "<li>" + $(this).html() + "</li>");
			i++;
		});
		carousel.size(i-1);
		$("#tab-people").removeClass();
		$("#tab-popular").removeClass();		
		$("#tab-recent").removeClass();
		$("#tab-recent").addClass("active");
	});	
	$("#tab-people").click(function() {
		carousel.reset();
		var i=1;
		$('#dsq-combo-people .dsq-clearfix').each(function(){
			carousel.add(i, "<li>" + $(this).html() + "</li>");
			i++;
		});
		carousel.size(i-1);
		$("#tab-people").removeClass();
		$("#tab-popular").removeClass();		
		$("#tab-recent").removeClass();
		$("#tab-people").addClass("active");
	});	
	$("#tab-popular").click(function() {
		carousel.reset();
		var i=1;
		$('#dsq-combo-popular .dsq-clearfix').each(function(){
			carousel.add(i, "<li>" + $(this).html() + "</li>");
			i++;
		});
		carousel.size(i-1);
		$("#tab-people").removeClass();
		$("#tab-popular").removeClass();		
		$("#tab-recent").removeClass();
		$("#tab-popular").addClass("active");
	});	
}

