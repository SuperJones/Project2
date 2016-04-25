class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_one :inventory
    has_one :weapon, :through => :inventory

    # after_create :generate_inventory

    # def generate_inventory
    #     self.inventories.create!
    # end
end
