class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.references :user, index: true, foreign_key: true
    end
  end
end
