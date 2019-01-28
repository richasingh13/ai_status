class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_column :relatives, :employee_id, :integer
    add_column :reference_people, :employee_id, :integer
    add_column :education_credentials, :employee_id, :integer
  end
end
