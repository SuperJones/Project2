class RegistrationsController < Devise::RegistrationsController

  def create
    super
    Inventory.create!(user: current_user, weapon_id: params[:inventory][:weapon_id])
  end

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :steps)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :steps)
  end
end
