class Admin < ApplicationRecord
    has_secure_password
    has_one :gallery
    #validations
    validates :password, presence: true
    validates :email, uniqueness: true
    validates :password_digest, confirmation: true
end
