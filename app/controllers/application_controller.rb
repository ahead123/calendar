class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def require_user
    unless logged_in?
      redirect_to login_path
    end
  end
  
end
