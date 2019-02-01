class AddFieldToDailyStatuses < ActiveRecord::Migration[5.2]
  def change
    add_reference :daily_statuses, :employee, foreign_key: true
  end
end
