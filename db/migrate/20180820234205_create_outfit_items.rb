class CreateOutfitItems < ActiveRecord::Migration[5.2]
  def change
    create_table :outfit_items do |t|
      t.string :photo
      t.string :description
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
