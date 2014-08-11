class StickiesController < ApplicationController

  def index
    @stickies = Sticky.all
  end

  def new
    @user = current_user
    @sticky = Sticky.new
  end

  def create
    @categories = Category.all
    @board = Board.find(params[:sticky][:board_id])
    @user = current_user
    @sticky = Sticky.new(sticky_params)
    if @sticky.save!
      @sticky.creator_id = @user.id
      @sticky.category_id = @board.categories.find_by(title: 'ALL').id
      @sticky.save!
      redirect_to(board_path(@board))
    else
      render(:new)
    end
  end

  def show
    @sticky = Sticky.find(params[:id])
  end

  def edit
    @sticky = Sticky.find(params[:id])
  end

  def update
    @user = current_user
    # @board = board.find(params[:id])
    @sticky = Sticky.find(params[:id])
    if @sticky.update(sticky_params)
      @sticky.creator_id = @user.id
      @sticky.save
      # redirect_to(sticky_path(@sticky))
      render JSON: :sticky
    else
      render(:edit)
    end
  end

  def destroy
    @sticky = Sticky.find(params[:id])
  end

  private
  def sticky_params
    params.require(:sticky).permit(:title, :content, :category_id)
  end


end
