class Admin < ApplicationRecord
    has_secure_password
    has_one :gallery
    #validations
    validates :username, presence: true
   
end
