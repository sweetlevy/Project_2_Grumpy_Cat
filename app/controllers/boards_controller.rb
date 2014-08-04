class BoardsController < ApplicationController

  def index
    @boards = Board.all.limit(5)
    #snapshot index
  end

  def new
    @user = current_user
    @board = Board.new
  end

  def create
    @user = current_user
    @board = Board.new(board_params)
    if @board.save! && current_user
      @board.creator_id = @user.id
      @board.save!
      redirect_to(board_path(@board))
    else
      render(:new)
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @user = current_user
    @board = Board.find(params[:id])
    if @board.update(board_params)
      @board.editor_id = @user.id
      @board.save
      redirect_to(board_path(@board))
    else
      render(:edit)
    end
  end

  def destroy
    @board = Board.find(params[:id])
    # @user =
    # if current_user === @user

  end

  private

  def  board_params
    params.require(:board).permit(:title)
  end

end
