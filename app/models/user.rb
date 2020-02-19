class User < ApplicationRecord
  #encrypt with salt
  has_secure_password

  #input validations
  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: { case_sensitive: false }
end
