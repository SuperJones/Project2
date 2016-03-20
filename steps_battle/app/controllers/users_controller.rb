class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def new
      @user = User.new
  end

  def create
      @user = User.create!(user_params)
      redirect_to @user
  end

  def show
      @user = User.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
