class Admin < ApplicationRecord
    has_one :gallery
    #validations
    validates :name, presence: true
    # has_many :users, through: :gallery
end
