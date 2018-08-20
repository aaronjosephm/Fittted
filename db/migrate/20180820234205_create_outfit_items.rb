class CreateOutfitItems < ActiveRecord::Migration[5.2]
  def change
    create_table :outfit_items do |t|

      t.timestamps
    end
  end
end
