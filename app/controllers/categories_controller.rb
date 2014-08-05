class CategoriesController < ApplicationController

  def index
  end

  def new
    @board = Board.find(params[:board_id])
    @category = Category.new
  end

  def create
    current_board = Board.find(params[:category][:board_id])
    @category = Category.new(category_params)
    if @category.save!
      redirect_to board_path(current_board)
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
