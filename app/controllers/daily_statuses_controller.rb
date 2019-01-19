class DailyStatusesController < ApplicationController
  before_action :set_daily_status, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @daily_statuses = current_user.daily_statuses.all
  end

  def show
  end

  def new
    @daily_status = DailyStatus.new
  end

  def edit
  end

  def create
    @daily_status = current_user.daily_statuses.new(daily_status_params)

    respond_to do |format|
      if @daily_status.save
        format.html { redirect_to @daily_status, notice: 'Daily status was successfully created.' }
        format.json { render :show, status: :created, location: @daily_status }
      else
        format.html { render :new }
        format.json { render json: @daily_status.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @daily_status.update(daily_status_params)
        format.html { redirect_to @daily_status, notice: 'Daily status was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_status }
      else
        format.html { render :edit }
        format.json { render json: @daily_status.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @daily_status.destroy
    respond_to do |format|
      format.html { redirect_to daily_statuses_url, notice: 'Daily status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_daily_status
      @daily_status = DailyStatus.find(params[:id])
    end

    def daily_status_params
      params.require(:daily_status).permit!
    end
end
