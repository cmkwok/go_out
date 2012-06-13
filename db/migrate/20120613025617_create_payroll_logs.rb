class CreatePayrollLogs < ActiveRecord::Migration
  def change
    create_table :payroll_logs do |t|
      t.date :date
      t.decimal :amount, scale: 2

      t.timestamps
    end
  end
end
