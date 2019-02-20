require 'test_helper'

class TraineesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trainee = trainees(:one)
  end

  test "should get index" do
    get trainees_url
    assert_response :success
  end

  test "should get new" do
    get new_trainee_url
    assert_response :success
  end

  test "should create trainee" do
    assert_difference('Trainee.count') do
      post trainees_url, params: { trainee: { college: @trainee.college, contact_number: @trainee.contact_number, date_of_birth: @trainee.date_of_birth, email: @trainee.email, gender: @trainee.gender, joining_date: @trainee.joining_date, local_address: @trainee.local_address, name: @trainee.name, permanent_address: @trainee.permanent_address, profile_photo: @trainee.profile_photo, semester: @trainee.semester, year: @trainee.year } }
    end

    assert_redirected_to trainee_url(Trainee.last)
  end

  test "should show trainee" do
    get trainee_url(@trainee)
    assert_response :success
  end

  test "should get edit" do
    get edit_trainee_url(@trainee)
    assert_response :success
  end

  test "should update trainee" do
    patch trainee_url(@trainee), params: { trainee: { college: @trainee.college, contact_number: @trainee.contact_number, date_of_birth: @trainee.date_of_birth, email: @trainee.email, gender: @trainee.gender, joining_date: @trainee.joining_date, local_address: @trainee.local_address, name: @trainee.name, permanent_address: @trainee.permanent_address, profile_photo: @trainee.profile_photo, semester: @trainee.semester, year: @trainee.year } }
    assert_redirected_to trainee_url(@trainee)
  end

  test "should destroy trainee" do
    assert_difference('Trainee.count', -1) do
      delete trainee_url(@trainee)
    end

    assert_redirected_to trainees_url
  end
end
