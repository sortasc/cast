// APPLICATION LAYOUT
// 
//= require jquery
//= require jquery_ujs
//= require library/json2
//= require library/underscore-min
//= require library/backbone-min
//= require library/mustache
//= require_tree ./flat
//= require vendor/packery.pkgd

$( function() {
  var $container = $('#packery');
  $container.packery({
	  itemSelector: '.item',
	  gutter: 20,
  });
  // get item elements, jQuery-ify them
  var $itemElems = $( $container.packery('getItemElements') );
  // make item elements draggable
  $itemElems.draggable();
  // bind Draggable events to Packery
  $container.packery( 'bindUIDraggableEvents', $itemElems );
});
