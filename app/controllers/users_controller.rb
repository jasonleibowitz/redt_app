class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(param[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to @user
  end

  private
  def user_params
    return params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
