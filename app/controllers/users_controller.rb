class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Account successfully created."
      redirect_to @user
    else
      render 'users/new'
    end
  end

  def show
  end

  def edit
  end

  def update
    @user.update_attributes(user_params)
    if @user.save
      flash[:success] = "Account successfully updated."
      redirect_to @user
    else
      render 'users/edit'
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email,
                                 :password, :password_confirmation)
  end
end
