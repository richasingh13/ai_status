class CreateReferencePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :reference_people do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.string :currently_worked_at
      t.string :address
      t.text :how_connected
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
