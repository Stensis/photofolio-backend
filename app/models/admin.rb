class Admin < ApplicationRecord
    has_one :gallery
    #validations
    validates :username, presence: true
end
