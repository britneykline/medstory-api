class User < ApplicationRecord
  has_many :vaccines
  has_secure_password
  validates :email, presence: true, uniqueness:true 
end
