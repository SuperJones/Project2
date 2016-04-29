class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_one :inventory
    has_one :weapon, :through => :inventory

   attr_accessor :login

   def self.find_first_by_auth_conditions(warden_conditions)
     conditions = warden_conditions.dup
     if login = conditions.delete(:login)
       where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
     else
       if conditions[:username].nil?
         where(conditions).first
       else
         where(username: conditions[:username]).first
       end
     end
   end

  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }
  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def self.search(search)
    where("username ILIKE ?", "%#{search}%")
  end

    # after_create :generate_inventory

    # def generate_inventory
    #     self.inventories.create!
    # end
end
