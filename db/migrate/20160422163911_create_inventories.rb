class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.belongs_to :user, index: true
      t.belongs_to :weapon, index: true
    end
  end
end
