class AddAttachmentPhotofileToReviewPhotos < ActiveRecord::Migration
  def self.up
    change_table :review_photos do |t|
      t.attachment :photofile
    end
  end

  def self.down
    drop_attached_file :review_photos, :photofile
  end
end
