class AddIdsToOrderItems < ActiveRecord::Migration
  def change
    add_column :order_items, :order_id, :integer
    add_column :order_items, :order_item_status_id, :integer
    add_column :order_items, :dish_id, :integer
    add_column :order_items, :chef_id, :integer
  end
end
