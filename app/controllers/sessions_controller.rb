class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user.nil?
      flash[:notice] = "Sign-in unsuccessful, please check your username and/or password."
      redirect_to login_path
    else
      if @user.authenticate(params[:password])
        session[:current_user] = @user.id
        redirect_to users_profile_path, notice: "Sign-in successful!"
      else
        flash[:notice] = "Sign-in unsuccessful, please check your username and/or password."
        redirect_to login_path
      end
    end
  end

  def destroy
    session[:current_user] = nil
    redirect_to login_path
  end

end
