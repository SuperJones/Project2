class AddPhhotoUrlToUsers < ActiveRecord::Migration
  def change
      add_column :users, :photo_url, :string
      add_column :users, :email, :string
  end
end
