class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  
  has_many :daily_statuses
  mount_uploader :profile_pic, AvatarUploader

  # validates :first_name, :last_name, :contact, :permanent_address, :current_address, :city, :state, :country, :gender, :date_of_joining, :date_of_birth, presence: true

  GENDER = ["Male", "Female", "Transgender"]
  MARITAL_STATUS = ["Single", "Married", "Widow"]
  ROLE = ["admin", "employee", "trainee"]

  def admin?
    self.role == "admin"    
  end

  def employee?
    self.role == "employee"    
  end

  def trainee?
    self.role == "trainee"    
  end


end
