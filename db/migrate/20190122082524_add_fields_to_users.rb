class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :role, :string
    add_column :users, :skype_username, :string
    add_column :users, :marital_status, :string
    add_column :users, :linkedin_profile_url, :string
    add_column :users, :github_username, :string
    add_column :users, :aadhar_uid, :string
    add_column :users, :pan_uid, :string
  end
end
