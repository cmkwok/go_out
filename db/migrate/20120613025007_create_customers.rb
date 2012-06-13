class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
