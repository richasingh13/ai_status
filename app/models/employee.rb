class Employee < ApplicationRecord

  validates :email, presence: true, uniqueness: true

  has_many :documents
  has_many :education_credentials
  has_many :relatives
  has_many :reference_people
  has_many :daily_statuses
  after_create :save_as_user

  mount_uploader :profile_pic, AvatarUploader

  GENDER = ["Male", "Female", "Transgender"]
  MARITAL_STATUS = ["Single", "Married", "Widow"]

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def save_as_user
    User.create(email: self.email, password: "12345678", role: "employee")
  end
  
end
