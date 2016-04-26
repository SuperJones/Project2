class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def new
      @user = User.new
  end

  def create
      @user = User.create!(user_params)
      session[:user_id] = @user.id
      redirect_to users_path(@user)
  end

  def show
      @user = User.find(params[:id])
      @weapons = Weapon.limit(3)
  end

  def edit
      @user = User.find(params[:id])
       redirect_to root_url unless @current_user == @user
  end

  def update
      @user = User.find(params[:id])
      redirect_to root_url unless @current_user == @user
      @user.update(user_params)
      redirect_to user_path(@user)
  end

  def destroy
      redirect_to root_path unless @current_user
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
  end

  def add_weapon
    @user = User.find(params[:id])
    @weapon = Weapon.find(params[:weapon_id])
    @inventory = Inventory.new
    @inventory.update(user_id: @user, weapon_id: @weapon)
    redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:username, :photo_url, :steps, :email, :password)
    end
end
