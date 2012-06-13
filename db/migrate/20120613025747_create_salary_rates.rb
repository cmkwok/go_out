class CreateSalaryRates < ActiveRecord::Migration
  def change
    create_table :salary_rates do |t|
      t.string :level
      t.string :description
      t.decimal :hourly_rate, scale: 2
      t.decimal :bonus, scale: 2

      t.timestamps
    end
  end
end
