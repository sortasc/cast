// APPLICATION LAYOUT
// 
//= require jquery
//= require jquery_ujs
//= require library/json2
//= require library/underscore-min
//= require library/backbone-min
//= require library/mustache
//= require_tree ./flat
//= require vendor/packery.pkgd.min

var $container = $('#packery');
// initialize
$container.packery({
  itemSelector: '.item',
  gutter: 10
});