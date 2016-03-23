class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :weapon_kind
      t.integer :hp
      t.references :user, index: true, foreign_key: true
    end
  end
end
