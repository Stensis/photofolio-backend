class User < ApplicationRecord
    has_secure_password
    has_many :reviews

    validates :password_digest, presence: true
    validates :email, uniqueness: true
    validates :password_digest, confirmation: true
  
end
