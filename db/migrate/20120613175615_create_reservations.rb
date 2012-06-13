class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :table_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
