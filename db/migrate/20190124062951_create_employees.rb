class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.string :profile_pic
      t.date :date_of_birth
      t.string :gender
      t.string :marital_status
      t.string :email
      t.string :password
      t.string :password_confirmation
      t.string :permanent_address
      t.string :current_address
      t.string :city
      t.string :state
      t.string :country
      t.string :nationality
      t.string :designation
      t.date :date_of_joining
      t.string :role
      t.string :skype_username
      t.string :linkedin_profile_url
      t.string :github_username
      t.string :aadhar_uid
      t.string :pan_uid
      t.text :job_description

      t.timestamps
    end
  end
end
