class CategoriesController < ApplicationController

  def index
  end

  def new
    @category = Category.new
    @board = Board.find(params[:board_id])
  end

  def create
    @board = Board.find(params[:category][:board_id])
    @category = Category.new(category_params)
    current_board =
    Board.find(params[:category][:board_id])

    if @category.save!
      redirect_to(board_path(@board))

    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
    @board = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:title, :board_id)
  end

end
