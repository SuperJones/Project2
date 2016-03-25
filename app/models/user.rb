class User < ActiveRecord::Base
    has_one :inventory

    # after_create :generate_inventory

    # def generate_inventory
    #     self.inventories.create!
    # end
end
