class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  def hello
    render html: "Hello, World!"
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user?(user)
    user == @current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !@current_user.nil?
  end

  def correct_user
    unless current_user?(@user)
      flash[:warning] = "Unauthorized user."
      redirect_to root_path
    end
  end

  def redirect_login
    if logged_in?
      flash[:warning] = "You are already logged in."
      redirect_to root_path
    end
  end

  def redirect_anon
    unless logged_in?
      flash[:warning] = "You must be logged in to do this."
      redirect_to root_path
    end
  end
end
