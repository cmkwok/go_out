class AddPolymorphismToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employable_id, :integer
    add_column :employees, :employable_type, :string
  end
end
