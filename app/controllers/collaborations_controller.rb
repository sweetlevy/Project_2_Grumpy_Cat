class CollaborationsController < ApplicationController

  def new
    @collaboration = Collaboration.new

  end

  def create

    @collaboration = Collaboration.new(collaboration_params)
    if @collaboration.save
      redirect_to(board_path(@collaboration.board_id))
    else
      render :back
    end

  end

  def destroy

  end

  private
  def collaboration_params
    params.require(:collaboration).permit(:board_id, :user_id)
  end
end
