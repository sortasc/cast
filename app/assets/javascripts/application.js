// APPLICATION LAYOUT
// 
//= require jquery
//= require jquery_ujs

//= require_tree ./vendor/flat
//= require vendor/packery.pkgd
//= require vendor/jquery.nanoscroller
//= require vendor/jquery.knob

//= require lib/angular
//= require lib/angular-resource
//= require cast
//= require_tree ./angular


$( function() {
  var $container = $('#packery');
  $container.packery({
	  itemSelector: '.item',
	  gutter: 20,
  });
  // get item elements, jQuery-ify them
  // var $itemElems = $( $container.packery('getItemElements') );
  // make item elements draggable
  // $itemElems.draggable();
  // bind Draggable events to Packery
  // $container.packery( 'bindUIDraggableEvents', $itemElems );

  // timeline scrollbar
	$(".nano").nanoScroller();
	
  // feed
	// $('#feed').reader('http://foster.sorta.in/rss');

  // circular progress to score 
  $(".dial").knob({ readOnly: true });

});

