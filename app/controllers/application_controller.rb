class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:user] if session[:user]
  end

  def user_name
    User.find(current_user).name
  end
  helper_method :user_name

  private

  def logged_in?
    !!session[:user]
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_url
    end
  end
end
