class RenameItemsToWeapons < ActiveRecord::Migration
  def change
      rename_table :items, :weapons
  end
end
