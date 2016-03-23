class RenameItemsColumnToWeapons < ActiveRecord::Migration
  def change
      rename_column :inventories, :item_id, :weapon_id
  end
end
