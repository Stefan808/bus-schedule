class User < ActiveRecord::Base

  validates :email, :username, presence: true
  validates :email, uniqueness: true

  # validates_confirmation_of :password

  has_secure_password

  ROLES = ["admin", "user"]

  # def role?(base_role)
  #   ROLES.index(base_role.to_s) <= ROLES.index(role)
  # end

  after_create :default_role

  private

    def default_role 
  	  self.role = ROLES[1]
  	  self.save
    end

end