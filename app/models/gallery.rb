class Gallery < ApplicationRecord
    # belongs_to :admin
    has_many :reviews
end
