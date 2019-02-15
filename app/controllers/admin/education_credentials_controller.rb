class Admin::EducationCredentialsController < AdminController
  load_and_authorize_resource
  before_action :set_education_credential, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_employee, only: [:show, :edit, :new]
  before_action :set_employee_for_form, only: [:create, :update]
  
  def index
    @education_credentials = EducationCredential.all
  end

  def show
  end

  def new
    @education_credential = EducationCredential.new
  end

  def edit
  end

  def create
    @education_credential = EducationCredential.new(education_credential_params)

    respond_to do |format|
      if @education_credential.save
        format.html { redirect_to admin_employee_path(@employee), notice: 'Education credential was successfully created.' }
        format.json { render :show, status: :created, location: @education_credential }
      else
        format.html { render :new }
        format.json { render json: @education_credential.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @education_credential.update(education_credential_params)
        format.html { redirect_to admin_employee_path(@employee), notice: 'Education credential was successfully updated.' }
        format.json { render :show, status: :ok, location: @education_credential }
      else
        format.html { render :edit }
        format.json { render json: @education_credential.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @education_credential.destroy
    respond_to do |format|
      format.html { redirect_to admin_education_credentials_path, notice: 'Education credential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_education_credential
      @education_credential = EducationCredential.find(params[:id])
    end

    def set_employee
      if params[:employee_id].present?        
        @employee = Employee.find(params[:employee_id])
      end
    end

    def set_employee_for_form
      @employee = Employee.find(params[:education_credential][:employee_id])
    end

    def education_credential_params
      params.require(:education_credential).permit!
    end
end
