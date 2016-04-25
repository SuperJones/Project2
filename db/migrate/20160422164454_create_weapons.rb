class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :weapon_name
      t.string :weapon_type
      t.string :photo_url
      t.integer :attack_points
      t.references :inventory, index: true, foreign_key: true
    end
  end
end
