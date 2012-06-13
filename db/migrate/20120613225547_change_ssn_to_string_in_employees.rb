class ChangeSsnToStringInEmployees < ActiveRecord::Migration
  def change
    change_column :employees, :ssn, :string
  end
end
