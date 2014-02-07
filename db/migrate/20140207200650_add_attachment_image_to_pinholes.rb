class AddAttachmentImageToPinholes < ActiveRecord::Migration
  def self.up
    change_table :pinholes do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :pinholes, :image
  end
end
