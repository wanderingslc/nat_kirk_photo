class CreatePortraits < ActiveRecord::Migration
  def change
    create_table :portraits do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
