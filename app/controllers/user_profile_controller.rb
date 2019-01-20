class UserProfileController < ApplicationController

  before_action :authenticate_user!
  before_action :set_current_user


  def edit_personal_info
  end

  def edit_address_info
  end

  def edit_job_info
  end

  def update_personal_info
    if @user.update(personal_params)
      redirect_to profile_path, flash: { success: "Personal info has been updated successfully" }
    end
  end

  def update_address_info
    if @user.update(address_params)
      redirect_to profile_path, flash: { success: "Address info has been updated successfully" }
    end
  end

  def update_job_info
    if @user.update(job_params)
      redirect_to profile_path, flash: { success: "Job info has been updated successfully" }
    end
  end

  private

    def set_current_user
      @user = current_user
    end

    def address_params
      params.require(:user).permit(:permanent_address, :current_address, :city, :state, :country, :nationality)
    end

    def job_params
      params.require(:user).permit(:designation, :date_of_joining, :job_description)
    end

    def personal_params
      params.require(:user).permit(:email, :password, :password_confirmation, :date_of_birth, :profile_pic, :first_name, :last_name, :contact, :gender)
    end

end
