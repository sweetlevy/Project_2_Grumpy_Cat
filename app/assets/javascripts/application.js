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

  $('#board-nav').on('click', '.sticky-button', showModal );
  $('#board-nav').on('click', '.category-button', showModal );
  $('#board-nav').on('click', '.collaborator-button', showModal );

  $('#container').on('click', '.board-title',editTitle);
  $('body').on('keypress', '.edit-title',
     function(event) {
      var theActualInputBox = this;
      if (event.which === 13) {
        updateTitle.call(theActualInputBox);
      }
      }
  );

  $('board-nav').on('click', '.sticky-button', showModal );

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
  span.on('click', removeMouseEvents);
  var title = $('.container-name');
  title.append(span);
  $('body').off('click', '.sticky-container');

  $('.sticky-container').on('mouseover', '.sticky', expandSticky);
  $('.sticky-container').on('mouseleave', '.sticky', retractSticky);

}

function retractBoard() {
  var $this = $(this);

  var $containerDiv = $this.parent().parent();
  $containerDiv.siblings().show();
  var $idValue = $containerDiv.children('div').attr('id');

  if ($idValue == "sc1") {
    $containerDiv.css({width: '50vw', height: '50vh', left: ''});

  } else if ($idValue == "sc2") {
    $containerDiv.css({width: '50vw', height: '50vh', left: ''});

  } else if ($idValue == "sc3") {
    $containerDiv.css({width: '50vw', height: '50vh', right: ''});

  } else {
    $containerDiv.css({width: '50vw', height: '50vh', top: '', left: ''});
  }

  var $span = $('.retract');
  $span.remove();
  $('body').on('click', '.sticky-container', expandBoard);
}

function showModal() {
  $('.modal').show();
}
function retractSticky() {
  var $this = $(this);
  var content = $this.children().eq(1);
  content.css('display', 'none');
}

function expandSticky() {
  var $this = $(this);
  var content = $this.children().eq(1);
  content.css('display', 'block');
}

function removeMouseEvents() {
$('.sticky-container').off('mouseover', '.sticky');
$('.sticky-container').off('mouseleave', '.sticky');
}

function editTitle() {
  var titleH3 = $(this);
  var id = titleH3.data('id');
  var editSpan = $('<span class="edit">');
  var editInput = $('<input type="text" class="edit-title"' +  'data-id=' + id + '>');

  editInput.val(titleH3.text());

  editSpan.append(editInput);

  titleH3.replaceWith(editSpan);
}

function updateTitle() {
  var headerElement = $(this).closest('header');
  var id = $('.edit-title').data('id');
  console.log(id);
  var newTitle = headerElement.find('.edit-title').val();
  var params = {
    board: {
      title: newTitle
    }
  };
  $.ajax('/boards/' + id, { type: "PUT", data: params })
    .done(function(board) {
      // headerElement.remove();
      $('header .edit').replaceWith($('<h3 data-id=' + id + '> ' + newTitle + '</h3>'))
      console.log('done');
    });
}
