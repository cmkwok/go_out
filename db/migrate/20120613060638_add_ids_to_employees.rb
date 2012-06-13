class AddIdsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :address_id, :integer
    add_column :employees, :payroll_log_id, :integer
  end
end
