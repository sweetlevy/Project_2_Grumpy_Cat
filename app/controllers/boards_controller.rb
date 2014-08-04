class BoardsController < ApplicationController

  def index
    @boards = Board.all.limit(5)
    #snapshot index
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save!
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
    @board = Board.find(params[:id])
    if @board.update!
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
    params.require(:board).permit(:title, :category)
  end

end
