class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.string :specialty

      t.timestamps
    end
  end
end
