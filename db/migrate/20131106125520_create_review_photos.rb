class CreateReviewPhotos < ActiveRecord::Migration
  def change
    create_table :review_photos do |t|

      t.timestamps
    end
  end
end
