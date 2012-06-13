class AddSalaryRateIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :salary_rate_id, :integer
  end
end
