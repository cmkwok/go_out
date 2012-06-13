class AddDishIdToCatalogs < ActiveRecord::Migration
  def change
    add_column :catalogs, :dish_id, :integer
  end
end
