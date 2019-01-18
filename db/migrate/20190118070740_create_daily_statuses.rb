class CreateDailyStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_statuses do |t|
      t.string :in_time
      t.string :out_time
      t.string :break
      t.references :user,  foreign_key: true

      t.timestamps
    end
  end
end
