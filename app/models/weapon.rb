class Weapon < ActiveRecord::Base
    has_many :inventories
end
