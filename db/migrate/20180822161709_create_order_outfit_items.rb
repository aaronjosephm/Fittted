class CreateOrderOutfitItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_outfit_items do |t|
      t.references :order_outfit, foreign_key: true
      t.references :item, foreign_key: true
      t.string :size

      t.timestamps
    end
  end
end
