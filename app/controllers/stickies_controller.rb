class StickiesController < ApplicationController

  def index
    @stickies = Sticky.all
    #modal per category
  end

  def new
    @sticky = Sticky.new
  end

  def create
    @board = board.find(params[:id])
    @sticky = Sticky.new(sticky_params)
    if @sticky.save!
      redirect(board_path(@board))
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
    @board = board.find(params[:id])
    @sticky = Sticky.find(params[:id])
    if @sticky.update!
      redirect(board_path(@board))
    else
      render(:edit)
    end
  end

  def destroy
    #session/ sticky access rights
    @sticky = Sticky.find(params[:id])
  end

  private
  def sticky_params
    params.require(:sticky).permit(:title, :content)
  end


end
