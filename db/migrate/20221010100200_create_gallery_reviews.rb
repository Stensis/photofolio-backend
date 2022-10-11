class CreateGalleryReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :gallery_reviews do |t|
      t.string :serializer

      t.timestamps
    end
  end
end
