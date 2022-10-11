class User < ApplicationRecord
#validations
validates :name, presence: true
validates :email, uniqueness: true

    #associations
    has_many :reviews
    has_one :booking

    # has_secure_password
end
