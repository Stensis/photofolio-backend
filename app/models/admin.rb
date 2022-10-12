class Admin < ApplicationRecord
    has_one :gallery
    #validations
    validates :username, presence: true
    # has_many :users, through: :gallery
end
