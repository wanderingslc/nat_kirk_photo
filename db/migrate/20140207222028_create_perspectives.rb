class CreatePerspectives < ActiveRecord::Migration
  def change
    create_table :perspectives do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
