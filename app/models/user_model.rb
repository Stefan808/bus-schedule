class User < ActiveRecord::Base

  validates :email, :username, presence: true
  validates :email, uniqueness: true

  # validates_confirmation_of :password
  #
  has_secure_password

end