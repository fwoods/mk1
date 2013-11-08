class RemoveReviewPhotoColumnsFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :review_photo_id
  end

  def down
    add_column :products, :review_photo_id, :integer
  end
end
