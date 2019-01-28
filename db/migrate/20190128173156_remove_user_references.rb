class RemoveUserReferences < ActiveRecord::Migration[5.2]
  def change
    remove_column :relatives, :user_id
    remove_column :reference_people, :user_id
    remove_column :education_credentials, :user_id
  end
end
