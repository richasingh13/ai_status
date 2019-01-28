class RemovePasswordsFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :password, :string
    remove_column :employees, :password_confirmation, :string
  end
end
