class CollaborationsController < ApplicationController

  def new
    @colab = Collaboration.new
    render action:
  end

  def create
    @user = current_user
    @collaboration = Collaboration.new(collaboration_params)
    if @collaboration.save && @user
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
