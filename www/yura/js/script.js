$(document).ready(function() {
	if($(window).height() > $("body").height())
	{
		$('body').css({height: $(window).height()+'px'});
	}
});