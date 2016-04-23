class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.integer :steps
      t.string :photo_url
      t.string :email
      t.string :password
    end
  end
end
