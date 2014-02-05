class AddAttachmentPhotoToGallery1s < ActiveRecord::Migration
  def self.up
    change_table :gallery_1s do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :gallery_1s, :photo
  end
end
