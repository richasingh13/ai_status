require "application_system_test_case"

class DailyStatusesTest < ApplicationSystemTestCase
  setup do
    @daily_status = daily_statuses(:one)
  end

  test "visiting the index" do
    visit daily_statuses_url
    assert_selector "h1", text: "Daily Statuses"
  end

  test "creating a Daily status" do
    visit daily_statuses_url
    click_on "New Daily Status"

    fill_in "Break", with: @daily_status.break
    fill_in "In time", with: @daily_status.in_time
    fill_in "Out time", with: @daily_status.out_time
    fill_in "User", with: @daily_status.user
    click_on "Create Daily status"

    assert_text "Daily status was successfully created"
    click_on "Back"
  end

  test "updating a Daily status" do
    visit daily_statuses_url
    click_on "Edit", match: :first

    fill_in "Break", with: @daily_status.break
    fill_in "In time", with: @daily_status.in_time
    fill_in "Out time", with: @daily_status.out_time
    fill_in "User", with: @daily_status.user
    click_on "Update Daily status"

    assert_text "Daily status was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily status" do
    visit daily_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily status was successfully destroyed"
  end
end
