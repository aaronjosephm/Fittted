class AddColorToOutfits < ActiveRecord::Migration[5.2]
  def change
    add_column :outfits, :color, :string
  end
end
