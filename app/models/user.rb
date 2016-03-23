class User < ActiveRecord::Base
    has_many :inventories
    has_many :weapons, through: :inventories
end
