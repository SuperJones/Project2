class RemoveUserIdFromWeapons < ActiveRecord::Migration
  def change
      remove_column :weapons, :user_id
  end
end
