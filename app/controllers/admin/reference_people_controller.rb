class Admin::ReferencePeopleController < ApplicationController
  load_and_authorize_resource
  before_action :set_reference_person, only: [:show, :edit, :update, :destroy]

  # GET /reference_people
  # GET /reference_people.json
  def index
    @reference_people = ReferencePerson.all
  end

  # GET /reference_people/1
  # GET /reference_people/1.json
  def show
  end

  # GET /reference_people/new
  def new
    @reference_person = ReferencePerson.new
  end

  # GET /reference_people/1/edit
  def edit
  end

  # POST /reference_people
  # POST /reference_people.json
  def create
    @reference_person = ReferencePerson.new(reference_person_params)

    respond_to do |format|
      if @reference_person.save
        format.html { redirect_to admin_reference_person_path(@reference_person), notice: 'Reference person was successfully created.' }
        format.json { render :show, status: :created, location: @reference_person }
      else
        format.html { render :new }
        format.json { render json: @reference_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reference_people/1
  # PATCH/PUT /reference_people/1.json
  def update
    respond_to do |format|
      if @reference_person.update(reference_person_params)
        format.html { redirect_to admin_reference_person_path(@reference_person), notice: 'Reference person was successfully updated.' }
        format.json { render :show, status: :ok, location: @reference_person }
      else
        format.html { render :edit }
        format.json { render json: @reference_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reference_people/1
  # DELETE /reference_people/1.json
  def destroy
    @reference_person.destroy
    respond_to do |format|
      format.html { redirect_to admin_reference_people_path, notice: 'Reference person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_person
      @reference_person = ReferencePerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_person_params
      params.require(:reference_person).permit(:name, :contact, :email, :currently_worked_at, :address, :how_connected, :user_id)
    end
end
