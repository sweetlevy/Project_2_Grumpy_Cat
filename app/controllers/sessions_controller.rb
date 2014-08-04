class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.authenticate(params[:password])
      session[:current_user] = user.id
      redirect_to new_user_path, notice: "Sign-in successful!"
    else
      flash[:notice] = "Sign-in unsuccessful, please check your username and/or password."
      redirect_to login_path
    end
  end

  def destroy
    session[:current_user] = nil
    redirect_to login_path
  end

end
