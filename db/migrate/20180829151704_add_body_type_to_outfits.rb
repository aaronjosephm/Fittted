class AddBodyTypeToOutfits < ActiveRecord::Migration[5.2]
  def change
    add_column :outfits, :body_type, :string
  end
end
