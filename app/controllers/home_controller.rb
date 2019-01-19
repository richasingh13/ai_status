class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if user_signed_in?
    @daily_statuses = current_user.daily_statuses
    else
      @daily_statuses = DailyStatus.all
    end
  end

  def profile
    @user = User.find(params[:user_id])
  end

end
