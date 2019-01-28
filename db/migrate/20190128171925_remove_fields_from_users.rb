class RemoveFieldsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :profile_pic, :string
    remove_column :users, :gender, :string
    remove_column :users, :city, :string
    remove_column :users, :state, :string
    remove_column :users, :country, :string
    remove_column :users, :permanent_address, :string
    remove_column :users, :current_address, :string
    remove_column :users, :nationality, :string
    remove_column :users, :skype_username, :string
    remove_column :users, :linkedin_profile_url, :string
    remove_column :users, :github_username, :string
    remove_column :users, :aadhar_uid, :string
    remove_column :users, :pan_uid, :string
    remove_column :users, :marital_status, :string
    remove_column :users, :date_of_joining, :date
    remove_column :users, :date_of_birth, :date
    remove_column :users, :contact, :string
    remove_column :users, :designation, :string
    remove_column :users, :job_description, :string
  end
end
