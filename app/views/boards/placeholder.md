***board.js.erb***
var searchHTML = $("<%= j(render 'search') %>");
container.append(searchHTML);

var linkCreateSticky = $("<%= j(render partial: 'stickies/form', locals: {board_id: @board.id}) %>");
var linkCreateCategory = $("<%= j(render 'categories/form') %>");
var linkEditBoard = $("<%= j( link_to 'Edit Board', edit_board_path(@board.id), remote: true) %>");
var linkCreateCategory = $("<%= j(render 'categories/form', locals: {board_id: @board.id}) %>");
