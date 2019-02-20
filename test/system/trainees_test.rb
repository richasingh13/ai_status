require "application_system_test_case"

class TraineesTest < ApplicationSystemTestCase
  setup do
    @trainee = trainees(:one)
  end

  test "visiting the index" do
    visit trainees_url
    assert_selector "h1", text: "Trainees"
  end

  test "creating a Trainee" do
    visit trainees_url
    click_on "New Trainee"

    fill_in "College", with: @trainee.college
    fill_in "Contact number", with: @trainee.contact_number
    fill_in "Date of birth", with: @trainee.date_of_birth
    fill_in "Email", with: @trainee.email
    fill_in "Gender", with: @trainee.gender
    fill_in "Joining date", with: @trainee.joining_date
    fill_in "Local address", with: @trainee.local_address
    fill_in "Name", with: @trainee.name
    fill_in "Permanent address", with: @trainee.permanent_address
    fill_in "Profile photo", with: @trainee.profile_photo
    fill_in "Semester", with: @trainee.semester
    fill_in "Year", with: @trainee.year
    click_on "Create Trainee"

    assert_text "Trainee was successfully created"
    click_on "Back"
  end

  test "updating a Trainee" do
    visit trainees_url
    click_on "Edit", match: :first

    fill_in "College", with: @trainee.college
    fill_in "Contact number", with: @trainee.contact_number
    fill_in "Date of birth", with: @trainee.date_of_birth
    fill_in "Email", with: @trainee.email
    fill_in "Gender", with: @trainee.gender
    fill_in "Joining date", with: @trainee.joining_date
    fill_in "Local address", with: @trainee.local_address
    fill_in "Name", with: @trainee.name
    fill_in "Permanent address", with: @trainee.permanent_address
    fill_in "Profile photo", with: @trainee.profile_photo
    fill_in "Semester", with: @trainee.semester
    fill_in "Year", with: @trainee.year
    click_on "Update Trainee"

    assert_text "Trainee was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainee" do
    visit trainees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainee was successfully destroyed"
  end
end
