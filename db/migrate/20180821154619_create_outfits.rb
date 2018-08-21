class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.string :price
      t.string :name
      t.string :theme
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
