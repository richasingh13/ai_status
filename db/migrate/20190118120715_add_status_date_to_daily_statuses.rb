class AddStatusDateToDailyStatuses < ActiveRecord::Migration[5.2]
  def change
    add_column :daily_statuses, :status_date, :date
  end
end
