class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date_create
      t.date :date_submit
      t.integer :number_customer
      t.decimal :pre_tax_amount, scale: 2
      t.decimal :tax, scale: 2
      t.decimal :discount, scale: 2
      t.decimal :tips, scale: 2

      t.timestamps
    end
  end
end
