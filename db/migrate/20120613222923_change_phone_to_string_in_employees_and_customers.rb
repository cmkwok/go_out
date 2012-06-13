class ChangePhoneToStringInEmployeesAndCustomers < ActiveRecord::Migration
  def change
    change_column :employees, :phone, :string
    change_column :customers, :phone, :string
  end
end
