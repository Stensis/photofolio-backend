class User < ApplicationRecord
    

    validates :password, presence: true
    validates :email, uniqueness: true
    validates :password, confirmation: true
  
end
