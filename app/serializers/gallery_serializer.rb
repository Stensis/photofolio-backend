class GallerySerializer < ActiveModel::Serializer
  attributes :id, :category, :image, :title, :admin_id, :date
  has_many :reviews
end
