class Admin < ApplicationRecord
    has_one :gallery
    # has_many :users, through: :gallery
end
