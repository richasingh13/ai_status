require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { aadhar_uid: @employee.aadhar_uid, city: @employee.city, contact: @employee.contact, country: @employee.country, current_address: @employee.current_address, date_of_birth: @employee.date_of_birth, date_of_joining: @employee.date_of_joining, designation: @employee.designation, email: @employee.email, first_name: @employee.first_name, gender: @employee.gender, github_username: @employee.github_username, job_description: @employee.job_description, last_name: @employee.last_name, linkedin_profile_url: @employee.linkedin_profile_url, marital_status: @employee.marital_status, nationality: @employee.nationality, pan_uid: @employee.pan_uid, password: @employee.password, password_confirmation: @employee.password_confirmation, permanent_address: @employee.permanent_address, profile_pic: @employee.profile_pic, role: @employee.role, skype_username: @employee.skype_username, state: @employee.state } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { aadhar_uid: @employee.aadhar_uid, city: @employee.city, contact: @employee.contact, country: @employee.country, current_address: @employee.current_address, date_of_birth: @employee.date_of_birth, date_of_joining: @employee.date_of_joining, designation: @employee.designation, email: @employee.email, first_name: @employee.first_name, gender: @employee.gender, github_username: @employee.github_username, job_description: @employee.job_description, last_name: @employee.last_name, linkedin_profile_url: @employee.linkedin_profile_url, marital_status: @employee.marital_status, nationality: @employee.nationality, pan_uid: @employee.pan_uid, password: @employee.password, password_confirmation: @employee.password_confirmation, permanent_address: @employee.permanent_address, profile_pic: @employee.profile_pic, role: @employee.role, skype_username: @employee.skype_username, state: @employee.state } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
