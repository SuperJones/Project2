class WeaponsController < ApplicationController

  def index
      @weapons = Weapon.all
  end

  def new
      @weapon = Weapon.new
  end

  def show
        @user = User.find(params[:id])
        @inventory= Inventory.find(params[:user_id])
        @weapon = Weapon.find(weapon: @inventory.weapon_id)
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
