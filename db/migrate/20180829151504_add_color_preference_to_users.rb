class AddColorPreferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :color_preference, :string
  end
end
