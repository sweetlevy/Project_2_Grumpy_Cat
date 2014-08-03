class BoardsController < ApplicationController

<<<<<<< HEAD
=======
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
  end

  def destroy
    @board = Board.find(params[:id])
  end

  private

  def  board_params
    params.require(:board).permit(:title, :category)
  end
  
>>>>>>> f06e62e2102aff5a9fb8c3dd14298b5abbd8e7be
end
