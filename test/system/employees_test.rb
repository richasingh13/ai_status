require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Aadhar uid", with: @employee.aadhar_uid
    fill_in "City", with: @employee.city
    fill_in "Contact", with: @employee.contact
    fill_in "Country", with: @employee.country
    fill_in "Current address", with: @employee.current_address
    fill_in "Date of birth", with: @employee.date_of_birth
    fill_in "Date of joining", with: @employee.date_of_joining
    fill_in "Designation", with: @employee.designation
    fill_in "Email", with: @employee.email
    fill_in "First name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Github username", with: @employee.github_username
    fill_in "Job description", with: @employee.job_description
    fill_in "Last name", with: @employee.last_name
    fill_in "Linkedin profile url", with: @employee.linkedin_profile_url
    fill_in "Marital status", with: @employee.marital_status
    fill_in "Nationality", with: @employee.nationality
    fill_in "Pan uid", with: @employee.pan_uid
    fill_in "Password", with: @employee.password
    fill_in "Password confirmation", with: @employee.password_confirmation
    fill_in "Permanent address", with: @employee.permanent_address
    fill_in "Profile pic", with: @employee.profile_pic
    fill_in "Role", with: @employee.role
    fill_in "Skype username", with: @employee.skype_username
    fill_in "State", with: @employee.state
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Aadhar uid", with: @employee.aadhar_uid
    fill_in "City", with: @employee.city
    fill_in "Contact", with: @employee.contact
    fill_in "Country", with: @employee.country
    fill_in "Current address", with: @employee.current_address
    fill_in "Date of birth", with: @employee.date_of_birth
    fill_in "Date of joining", with: @employee.date_of_joining
    fill_in "Designation", with: @employee.designation
    fill_in "Email", with: @employee.email
    fill_in "First name", with: @employee.first_name
    fill_in "Gender", with: @employee.gender
    fill_in "Github username", with: @employee.github_username
    fill_in "Job description", with: @employee.job_description
    fill_in "Last name", with: @employee.last_name
    fill_in "Linkedin profile url", with: @employee.linkedin_profile_url
    fill_in "Marital status", with: @employee.marital_status
    fill_in "Nationality", with: @employee.nationality
    fill_in "Pan uid", with: @employee.pan_uid
    fill_in "Password", with: @employee.password
    fill_in "Password confirmation", with: @employee.password_confirmation
    fill_in "Permanent address", with: @employee.permanent_address
    fill_in "Profile pic", with: @employee.profile_pic
    fill_in "Role", with: @employee.role
    fill_in "Skype username", with: @employee.skype_username
    fill_in "State", with: @employee.state
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
