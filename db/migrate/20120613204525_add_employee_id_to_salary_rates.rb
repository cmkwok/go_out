class AddEmployeeIdToSalaryRates < ActiveRecord::Migration
  def change
    add_column :salary_rates, :employee_id, :integer
  end
end
