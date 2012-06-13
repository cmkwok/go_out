class AddEmployeeIdToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :employee_id, :integer
  end
end
