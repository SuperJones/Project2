class User < ActiveRecord::Base
    has_many :inventories
    has_many :items, through: :inventories
end
