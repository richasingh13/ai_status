class Admin::RelativesController < AdminController
  load_and_authorize_resource
  before_action :set_relative, only: [:show, :edit, :update, :destroy]
  before_action :set_employee, only: [:show, :edit, :new]
  before_action :set_employee_for_form, only: [:create, :update]
  def index
    @relatives = Relative.all
  end

  def show
  end

  def new
    @relative = Relative.new
  end

  def edit
  end

  def create
    @relative = Relative.new(relative_params)

    respond_to do |format|
      if @relative.save
        format.html { redirect_to admin_employee_path(@employee), notice: 'Relative was successfully created.' }
        format.json { render :show, status: :created, location: @relative }
      else
        format.html { render :new }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @relative.update(relative_params)
        format.html { redirect_to admin_relative_path(@relative), notice: 'Relative was successfully updated.' }
        format.json { render :show, status: :ok, location: @relative }
      else
        format.html { render :edit }
        format.json { render json: @relative.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @relative.destroy
    respond_to do |format|
      format.html { redirect_to admin_relatives_path, notice: 'Relative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_relative
      @relative = Relative.find(params[:id])
    end

    def set_employee
      @employee = Employee.find(params[:employee_id])
    end

    def set_employee_for_form
      @employee = Employee.find(params[:relative][:employee_id])
    end

    def relative_params
      params.require(:relative).permit!
    end
end
