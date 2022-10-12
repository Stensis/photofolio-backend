class User < ApplicationRecord
     has_secure_password

    validates :password_digest, presence: true
    validates :email, uniqueness: true
    validates :password_digest, confirmation: true
  
end
