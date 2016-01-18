$(document).on('ready page:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rating2').raty( { path: '/assets', scoreName: 'favorite[rating]' });
	$('.rated').raty({ path: '/assets',
		readOnly: true,
	  score: function() {
	    return $(this).attr('data-score');
	  }
	});

	$('.img-zoom').elevateZoom();
});
