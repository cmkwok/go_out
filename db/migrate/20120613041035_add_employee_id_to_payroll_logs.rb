class AddEmployeeIdToPayrollLogs < ActiveRecord::Migration
  def change
    add_column :payroll_logs, :employee_id, :integer
  end
end
