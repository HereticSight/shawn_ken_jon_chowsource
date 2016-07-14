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
end
