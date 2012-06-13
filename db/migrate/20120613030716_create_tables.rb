class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :min_capacity
      t.integer :max_capacity
      t.string :description

      t.timestamps
    end
  end
end
