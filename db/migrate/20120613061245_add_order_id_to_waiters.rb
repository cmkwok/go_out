class AddOrderIdToWaiters < ActiveRecord::Migration
  def change
    add_column :waiters, :order_id, :integer
  end
end
