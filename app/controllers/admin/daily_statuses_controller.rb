class Admin::DailyStatusesController < AdminController
  load_and_authorize_resource
  before_action :set_daily_status, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /daily_statuses
  # GET /daily_statuses.json
  def index
    @daily_statuses = current_user.daily_statuses
  end

  # GET /daily_statuses/1
  # GET /daily_statuses/1.json
  def show
  end

  # GET /daily_statuses/new
  def new
    @daily_status = DailyStatus.new
  end

  # GET /daily_statuses/1/edit
  def edit
  end

  # POST /daily_statuses
  # POST /daily_statuses.json
  def create
    @daily_status = current_user.daily_statuses.new(daily_status_params)

    respond_to do |format|
      if @daily_status.save
        format.html { redirect_to admin_daily_status_path(@daily_status), notice: 'Daily status was successfully created.' }
        format.json { render :show, status: :created, location: @daily_status }
      else
        format.html { render :new }
        format.json { render json: @daily_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_statuses/1
  # PATCH/PUT /daily_statuses/1.json
  def update
    respond_to do |format|
      if @daily_status.update(daily_status_params)
        format.html { redirect_to admin_daily_status_path(@daily_status), notice: 'Daily status was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_status }
      else
        format.html { render :edit }
        format.json { render json: @daily_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_statuses/1
  # DELETE /daily_statuses/1.json
  def destroy
    @daily_status.destroy
    respond_to do |format|
      format.html { redirect_to admin_daily_statuses_path, notice: 'Daily status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_status
      @daily_status = DailyStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_status_params
      params.require(:daily_status).permit!
    end
end
