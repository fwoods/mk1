class AddAttachmentPhotofileToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :photofile
    end
  end

  def self.down
    drop_attached_file :photos, :photofile
  end
end
