class RemoveFieldFromDailyStatus < ActiveRecord::Migration[5.2]
  def change
    remove_column :daily_statuses, :user_id
  end
end
