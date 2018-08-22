class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :price
      t.string :description
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
