class Admin::ReferencePeopleController < ApplicationController
  load_and_authorize_resource
  before_action :set_reference_person, only: [:show, :edit, :update, :destroy]
  before_action :set_employee, only: [:show, :edit, :new]
  before_action :set_employee_for_form, only: [:create, :update]

  def index
    @reference_people = ReferencePerson.all
  end

  def show
  end

  def new
    @reference_person = ReferencePerson.new
  end

  def edit
  end

  def create
    @reference_person = ReferencePerson.new(reference_person_params)

    respond_to do |format|
      if @reference_person.save
        format.html { redirect_to admin_employee_path(@employee), notice: 'Reference person was successfully created.' }
        format.json { render :show, status: :created, location: @reference_person }
      else
        format.html { render :new }
        format.json { render json: @reference_person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @reference_person.update(reference_person_params)
        format.html { redirect_to admin_employee_path(@employee), notice: 'Reference person was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference_person }
      else
        format.html { render :edit }
        format.json { render json: @reference_person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @reference_person.destroy
    respond_to do |format|
      format.html { redirect_to admin_reference_people_path, notice: 'Reference person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_reference_person
      @reference_person = ReferencePerson.find(params[:id])
    end

    def set_employee
      @employee = Employee.find(params[:employee_id])
    end

    def set_employee_for_form
      @employee = Employee.find(params[:reference_person][:employee_id])
    end

    def reference_person_params
      params.require(:reference_person).permit!
    end
end
