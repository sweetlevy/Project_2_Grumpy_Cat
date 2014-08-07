class CategoriesController < ApplicationController

  def index
  end

  def new
    @category = Category.new
    @board = Board.find(params[:board_id])
  end

  def create
    @category = Category.new(category_params)
    current_board =
    Board.find(params[:category][:board_id])

    if @category.save!
      respond_to do |format|
        format.js
      end

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
