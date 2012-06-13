class AddIdsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :waiter_id, :integer
    add_column :orders, :table_id, :integer
    add_column :orders, :order_status_id, :integer
  end
end
