class StickiesController < ApplicationController

  def index
    @stickies = Sticky.all
  end

  def new
    @sticky = Sticky.new
  end

  def create
    @sticky = Sticky.new(sticky_params)
  end

  def show
    @sticky = Sticky.find(params[:id])
  end

  def edit
    @sticky = Sticky.find(params[:id])
  end

  def update
    @sticky = Sticky.find(params[:id])
  end

  def destroy
    @sticky = Sticky.find(params[:id])
  end

  private
  def sticky_params
    params.require(:sticky).permit(:title, :content)
  end


end
