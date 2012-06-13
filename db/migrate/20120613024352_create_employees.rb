class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :ssn
      t.integer :phone
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
