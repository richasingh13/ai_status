class Admin::TraineesController < ApplicationController
  before_action :set_trainee, only: [:show, :edit, :update, :destroy]
   layout 'admin'
  # GET /trainees
  # GET /trainees.json
  def index
    @trainees = Trainee.all
  end

  # GET /trainees/1
  # GET /trainees/1.json
  def show
  end

  # GET /trainees/new
  def new
    @trainee = Trainee.new
  end

  # GET /trainees/1/edit
  def edit
  end

  # POST /trainees
  # POST /trainees.json
  def create
    @trainee = Trainee.new(trainee_params)

    respond_to do |format|
      if @trainee.save
        User.create(email: @trainee.email, password: "12345678", role: "trainee")
        format.html { redirect_to admin_trainee_path(@trainee), notice: 'Trainee was successfully created.' }
        format.json { render :show, status: :created, location: @trainee }
      else
        format.html { render :new }
        format.json { render json: @trainee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trainees/1
  # PATCH/PUT /trainees/1.json
  def update
    respond_to do |format|
      if @trainee.update(trainee_params)
        format.html { redirect_to admin_trainee_path(@trainee), notice: 'Trainee was successfully updated.' }
        format.json { render :show, status: :ok, location: @trainee }
      else
        format.html { render :edit }
        format.json { render json: @trainee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trainees/1
  # DELETE /trainees/1.json
  def destroy
    @trainee.destroy
    respond_to do |format|
      format.html { redirect_to admin_trainees_url, notice: 'Trainee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainee
      @trainee = Trainee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainee_params
      params.require(:trainee).permit(:name, :email, :contact_number, :date_of_birth, :local_address, :permanent_address, :college, :semester, :year, :profile_photo, :gender, :joining_date)
    end
end
