class ChangeAvailabiltyToSingleCharDishes < ActiveRecord::Migration
  def change
    change_column :dishes, :availability, "char(1)"
  end
end
