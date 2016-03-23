class WeaponsController < ApplicationController

  def index
      @weapons = Weapon.all
  end

  def new
      @weapon = Weapon.new
  end

  def show

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
