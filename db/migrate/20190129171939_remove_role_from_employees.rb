class RemoveRoleFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :role, :string
  end
end
