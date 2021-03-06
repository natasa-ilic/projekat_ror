class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find(session[:user]) if session[:user]
  end

  def logged_in?
  	current_user 
  end

  def authorize_user
    redirect_to new_session_path unless logged_in?
  end

  helper_method :current_user, :logged_in?
end
