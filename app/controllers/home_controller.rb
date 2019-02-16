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
    if @employee.update(employee_params)
      @user = User.find(current_user.id)
      @user.update(email: @employee.email)
      redirect_to profile_path, flash: { success: "Your profile has been updated successfully!" }
    else
      render :edit_profile
    end
  end

  private

   
    def set_current_employee
      @employee = Employee.find_by(email: current_user.email)
    end

    def employee_params
      params.require(:employee).permit!
    end

end
