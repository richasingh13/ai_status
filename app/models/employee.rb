class Employee < ApplicationRecord
  has_many :documents
  has_many :education_credentials
  has_many :relatives
  has_many :reference_people

  GENDER = ["Male", "Female", "Transgender"]
  MARITAL_STATUS = ["Single", "Married", "Widow"]

  def name
    "#{self.first_name} #{self.last_name}"
  end
  
end
