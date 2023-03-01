require "application_system_test_case"

class AirbnbsTest < ApplicationSystemTestCase
  setup do
    @airbnb = airbnbs(:one)
  end

  test "visiting the index" do
    visit airbnbs_url
    assert_selector "h1", text: "Airbnbs"
  end

  test "should create airbnb" do
    visit airbnbs_url
    click_on "New airbnb"

    fill_in "Address", with: @airbnb.address
    fill_in "Description", with: @airbnb.description
    fill_in "Name", with: @airbnb.name
    fill_in "Number of guests", with: @airbnb.number_of_guests
    fill_in "Price per night", with: @airbnb.price_per_night
    click_on "Create Airbnb"

    assert_text "Airbnb was successfully created"
    click_on "Back"
  end

  test "should update Airbnb" do
    visit airbnb_url(@airbnb)
    click_on "Edit this airbnb", match: :first

    fill_in "Address", with: @airbnb.address
    fill_in "Description", with: @airbnb.description
    fill_in "Name", with: @airbnb.name
    fill_in "Number of guests", with: @airbnb.number_of_guests
    fill_in "Price per night", with: @airbnb.price_per_night
    click_on "Update Airbnb"

    assert_text "Airbnb was successfully updated"
    click_on "Back"
  end

  test "should destroy Airbnb" do
    visit airbnb_url(@airbnb)
    click_on "Destroy this airbnb", match: :first

    assert_text "Airbnb was successfully destroyed"
  end
end
