class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :introduction
      t.decimal :price, scale: 2
      t.boolean :availability

      t.timestamps
    end
  end
end
