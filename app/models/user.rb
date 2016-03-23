class User < ActiveRecord::Base
    has_many :inventories
    has_many :weapons, through: :inventories

    after_create :generate_inventory

    def generate_inventory
        self.inventories.create!
    end
end
