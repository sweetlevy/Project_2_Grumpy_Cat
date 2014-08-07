// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

$(document).ready(function() {

  console.log('on it');

  sortable();

  $('body').on('click', '.sticky-container', expandBoard);
  $('body').on('click', '.retract', retractBoard);
  // $('body').on('click', '.input', showInput);

});

function sortable() {
  $("#sc1, #sc2, #sc3, #sc4").sortable({
    connectWith: ".sticky-container" }).disableSelection();
}


function expandBoard() {
  var $this = $(this);
  var $parent = $this.parent();
  $parent.siblings().hide();
  $parent.offset({top: 0, left: 0}).css({width: '100%', height: 0});

  var span = $('<span class="retract">').text(' / Show All Categories');
  var title = $('.container-name');
  title.append(span);
}

function retractBoard() {
  var $this = $(this);

  var $containerDiv = $this.parent().parent();
  $containerDiv.siblings().show();
  $containerDiv.attr('id');
  // if ($containerDiv.attr)

  $containerDiv.css({width: '50vw', height: '50vh', left: ''});

  var $span = $('.retract');
  $span.remove();
}
