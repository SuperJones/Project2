class Weapon < ActiveRecord::Base
    has_many :inventories
    has_many :users through: :inventories
end
