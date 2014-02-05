class CreateGallery1s < ActiveRecord::Migration
  def change
    create_table :gallery_1s do |t|
      t.string :description

      t.timestamps
    end
  end
end
