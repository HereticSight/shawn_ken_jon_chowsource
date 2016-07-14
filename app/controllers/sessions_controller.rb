class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to @user
    else
      render 'sessions/new'
    end
  end

  def delete
    if logged_in?
      session[:user_id] = nil
      @current_user = nil
    end
    redirect_to root_path
  end
end
