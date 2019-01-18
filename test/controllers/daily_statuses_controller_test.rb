require 'test_helper'

class DailyStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_status = daily_statuses(:one)
  end

  test "should get index" do
    get daily_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_status_url
    assert_response :success
  end

  test "should create daily_status" do
    assert_difference('DailyStatus.count') do
      post daily_statuses_url, params: { daily_status: { break: @daily_status.break, in_time: @daily_status.in_time, out_time: @daily_status.out_time, user: @daily_status.user } }
    end

    assert_redirected_to daily_status_url(DailyStatus.last)
  end

  test "should show daily_status" do
    get daily_status_url(@daily_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_status_url(@daily_status)
    assert_response :success
  end

  test "should update daily_status" do
    patch daily_status_url(@daily_status), params: { daily_status: { break: @daily_status.break, in_time: @daily_status.in_time, out_time: @daily_status.out_time, user: @daily_status.user } }
    assert_redirected_to daily_status_url(@daily_status)
  end

  test "should destroy daily_status" do
    assert_difference('DailyStatus.count', -1) do
      delete daily_status_url(@daily_status)
    end

    assert_redirected_to daily_statuses_url
  end
end
