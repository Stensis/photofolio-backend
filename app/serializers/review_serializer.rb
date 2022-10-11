class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :gallery_id, :user_id, :review
end
