class RemoveUseridFromWeapons < ActiveRecord::Migration
  def change
      remove_column :weapons, :user_id, :integer
  end
end
