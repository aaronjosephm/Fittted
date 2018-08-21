class CreateOutfits < ActiveRecord::Migration[5.2]
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :photo

      t.timestamps
    end
  end
end
