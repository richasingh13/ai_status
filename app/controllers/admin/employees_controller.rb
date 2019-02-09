class Admin::EmployeesController < AdminController
  load_and_authorize_resource
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
    @relatives = @employee.relatives
    @education_credentials = @employee.education_credentials
    @reference_people = @employee.reference_people
    @documents = @employee.documents
    
  end

  def get_employee_profile
    @employee = Employee.find(params[:employee])
      respond_to do |format|
        format.html
        format.pdf do
          pdf = EmployeePdf.new(@employee)
          send_data pdf.render, filename: "employee.pdf",
          type: "application/pdf",
          disposition: "inline"
        end
      end
  end

  def new
    @employee = Employee.new
  end

  def edit
  end

  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        # User.create(email: @employee.email, password: "12345678", role: "employee")
        format.html { redirect_to admin_employee_path(@employee), notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to admin_employee_path(@employee), notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to admin_employees_path, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit!
    end
end
