class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      redirect_to()
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to user_path(current_user)
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to (user_path(@user))
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:current_user] = nil
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
  end

end
