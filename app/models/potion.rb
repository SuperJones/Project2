class Potion < ActiveRecord::Base
    has_many :inventories
end
