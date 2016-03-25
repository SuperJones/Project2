class Inventory < ActiveRecord::Base
  belongs_to :user
  has_one :weapon
  has_many :armors
  has_many :potions
end
