class AddReviewPhotoColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :review_photo_id, :integer
  end
end
