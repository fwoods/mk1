class AddProductIdColumnsToReviewPhotos < ActiveRecord::Migration
  def change
    add_column :review_photos, :product_id, :integer
  end
end
