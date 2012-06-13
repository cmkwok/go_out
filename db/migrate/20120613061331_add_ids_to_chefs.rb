class AddIdsToChefs < ActiveRecord::Migration
  def change
    add_column :chefs, :order_item_id, :integer
  end
end
