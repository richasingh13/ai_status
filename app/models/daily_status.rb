class DailyStatus < ApplicationRecord

  validates :in_time, :out_time, presence: true

  belongs_to :employee, optional: true
  has_many :tasks, inverse_of: :daily_status
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
end
