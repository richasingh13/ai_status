class DailyStatus < ApplicationRecord

  validates :in_time, :out_time, presence: true

  belongs_to :employee, optional: true
  has_many :tasks, inverse_of: :daily_status, dependent: :destroy
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true

  def total_working_hours
    in_time = self.out_time.to_time.strftime("%H").to_i
    out_time = self.in_time.to_time.strftime("%H").to_i
    "#{(in_time - out_time).to_i} hours"
  end

end
