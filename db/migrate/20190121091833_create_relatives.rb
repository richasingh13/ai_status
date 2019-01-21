class CreateRelatives < ActiveRecord::Migration[5.2]
  def change
    create_table :relatives do |t|
      t.string :name
      t.string :relation
      t.string :contact_number
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
