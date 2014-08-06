class UsersController < ApplicationController

  before_action :authorize, only: [:edit, :update, :destroy]

  def new
    @user = User.new
  end

  def search
    @collaboration = Collaboration.new
    @user = current_user
    @user_search = User.where("LOWER(name) LIKE '%#{params[:search].downcase}%'")


  end

  def profile
    @user = current_user
  end

  def profiles
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(login_path)
    else
      render :new
    end
  end

  # def show
  #   @user = User.find(params[:id])
  #   if current_user != @user
  #     # redirect_to user_path(current_user)
  #     render json: true
  #   end
  # end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render :profile
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:current_user] = nil
    redirect_to login_path
  end

  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation)
  end

end
