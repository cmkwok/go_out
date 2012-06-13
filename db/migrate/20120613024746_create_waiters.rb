class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :languages

      t.timestamps
    end
  end
end
