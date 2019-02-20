class CreateTrainees < ActiveRecord::Migration[5.2]
  def change
    create_table :trainees do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.date :date_of_birth
      t.string :local_address
      t.string :permanent_address
      t.string :college
      t.string :semester
      t.date :year
      t.string :profile_photo
      t.string :gender
      t.date :joining_date

      t.timestamps
    end
  end
end
