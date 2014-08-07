class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def index
    render layout: 'application', text: ''
  end

  private
  def authenticate
    redirect_to login_path unless current_user
  end

  def current_user
    User.find_by(id: session[:current_user]) if session[:current_user]
  end
    
  def authorize
    unless current_user && current_user.id == params[:id].to_i
      redirect_to users_path
    end
  end
end
