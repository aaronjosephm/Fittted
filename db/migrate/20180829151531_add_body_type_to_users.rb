class AddBodyTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :body_type, :string
  end
end
