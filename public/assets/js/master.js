$(document).ready(function(){
	
	var popovers = $('[data-toggle="popover"]');
			
	popovers.each(function(){
		
		$(this).popover({
			container: 'body',
			html: true,
			placement: 'left',
		});
		
		$(this).on('shown.bs.popover', function(){
			
			var open_popover = $('.popover.in');
	
			$('*').one('click', function(){
				open_popover.popover('destroy');
			});
		});
	});

	
});