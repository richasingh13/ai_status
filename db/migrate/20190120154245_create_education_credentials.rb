class CreateEducationCredentials < ActiveRecord::Migration[5.2]
  def change
    create_table :education_credentials do |t|
      t.string :course
      t.string :university
      t.float :percentage
      t.string :course_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
