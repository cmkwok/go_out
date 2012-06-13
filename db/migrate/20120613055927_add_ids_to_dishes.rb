class AddIdsToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :catalog_id, :integer
  end
end
