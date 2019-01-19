class AddFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :contact, :string
    add_column :users, :profile_pic, :string
    add_column :users, :designation, :string
    add_column :users, :date_of_joining, :date
    add_column :users, :date_of_birth, :date
    add_column :users, :job_description, :text
    add_column :users, :permanent_address, :string
    add_column :users, :current_address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :nationality, :string
    add_column :users, :gender, :string
  end
end
