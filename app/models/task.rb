class Task < ApplicationRecord
  belongs_to :daily_status, optional: true

  STATUS = ["Done", "Pending", "In progress"]

end
