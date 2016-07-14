class SessionsController < ApplicationController
  before_action :redirect_login, except:[:destroy]
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to @user
    else
      flash.now[:warning] = "There was an error logging you in:"
      render 'sessions/new'
    end
  end

  def destroy
    if logged_in?
      session[:user_id] = nil
      @current_user = nil
    else
      flash[:warning] = "Please log in before you attempt this action."
    end
    redirect_to root_path
  end
end
