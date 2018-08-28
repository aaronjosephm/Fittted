class AddArrivalDateToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :arrival, :string
  end
end
