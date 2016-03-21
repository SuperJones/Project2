class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def new
      @user = User.new
  end

  def show
      @user = User.find(params[:id])
  end

  def create
      @user = User.create!(user_params)
      redirect_to users_path
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      @user = User.update(@user, user_params)
      redirect_to user_path
  end

  def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:username, :photo_url, :steps, :email)
    end
end
