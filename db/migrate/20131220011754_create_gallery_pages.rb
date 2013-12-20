class CreateGalleryPages < ActiveRecord::Migration
  def change
    create_table :gallery_pages do |t|

      t.timestamps
    end
  end
end
