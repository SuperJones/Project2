class AddColumnToInventory < ActiveRecord::Migration
  def change
      add_column :inventories, :user_id, :integer
      add_column :inventories, :item_id, :integer
  end
end
