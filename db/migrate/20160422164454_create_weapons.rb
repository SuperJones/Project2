class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :weapon_name
      t.string :weapon_type
      t.string :photo_url
      t.integer :attack_points
    end
  end
end
