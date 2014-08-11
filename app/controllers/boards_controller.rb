class BoardsController < ApplicationController
  before_action :authenticate
  load_and_authorize_resource

  def index
    # @boards = Board.all
    #snapshot index
  end

  def new
    @user = current_user
    # @board = Board.new
    render action: 'create'
  end

  def create
    @user = current_user
    # @board = Board.new(board_params)
    if @board.save! && current_user
      @board.creator_id = @user.id
      @board.save!
      category = Category.create(title: "ALL")
      @board.categories.push(category)
      redirect_to(board_path(@board))

    else
      render(:new)
    end
  end

  def show
    @user = current_user
    @board = Board.find(params[:id])
    @sticky = Sticky.new
    render action: 'board'
  end

  def edit
    # @board = Board.find(params[:id])
  end

  def update
    @user = current_user
    # @board = Board.find(params[:id])
    if @board.update(board_params)
      @board.editor_id = @user.id
      @board.save
      render json: @board
    else
      render(:edit)
    end
  end

  def destroy
    @user = current_user
    # @board = Board.find(params[:id])
    @board.destroy
    render action: @user
  end

  private

  def  board_params
    params.require(:board).permit(:title)
  end

end
