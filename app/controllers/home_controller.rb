class HomeController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_employee
  
  def index
    @daily_statuses = @employee.daily_statuses
  end

  def profile
  end

  def edit_profile
    
  end

  def update_profile
    if @user.update(user_params)
      redirect_to root_path, flash: { success: "Your profile has been updated successfully!" }
    else
      render :edit_profile
    end
  end

  private

   
    def set_current_employee
      @employee = Employee.find_by(email: current_user.email)
    end

    def user_params
      params.require(:user).permit!
    end

end
