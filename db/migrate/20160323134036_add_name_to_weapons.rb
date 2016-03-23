class AddNameToWeapons < ActiveRecord::Migration
  def change
      add_column :weapons, :weapon_name, :string
  end
end
