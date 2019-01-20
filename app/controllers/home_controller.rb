class HomeController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user
  
  def index
    @daily_statuses = current_user.daily_statuses
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

    def set_current_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit!
    end

end
