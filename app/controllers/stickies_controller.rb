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
    @user = current_user
    # @board = board.find(params[:id])
    @sticky = Sticky.new(sticky_params)
    if @sticky.save! && current_user
      @sticky.creator_id = @user.id
      @sticky.save!
      redirect_to(sticky_path(@sticky))
      # redirect(board_path(@board))
    else
      render(:new)
    end
  end

  def show
    @sticky = Sticky.find(params[:id])
    #modal
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
      redirect_to(sticky_path(@sticky))
    else
      render(:edit)
    end
  end

  def destroy
    @sticky = Sticky.find(params[:id])
  end

  private
  def sticky_params
    params.require(:sticky).permit(:title, :content)
  end


end
