class Employee < ApplicationRecord
  has_many :documents

  GENDER = ["Male", "Female", "Transgender"]
  MARITAL_STATUS = ["Single", "Married", "Widow"]
  ROLE = ["Admin", "Employee", "Trainee"]
end
