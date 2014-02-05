class CreateGallery2s < ActiveRecord::Migration
  def change
    create_table :gallery_2s do |t|
      t.string :description

      t.timestamps
    end
  end
end
