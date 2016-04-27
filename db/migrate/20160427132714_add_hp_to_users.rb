class AddHpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :health_points, :integer, :default => 100
  end
end
