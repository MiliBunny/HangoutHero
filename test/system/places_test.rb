require "application_system_test_case"

class PlacesTest < ApplicationSystemTestCase
  setup do
    @place = places(:one)
  end

  test "visiting the index" do
    visit places_url
    assert_selector "h1", text: "Places"
  end

  test "should create place" do
    visit places_url
    click_on "New place"

    fill_in "Category", with: @place.category
    fill_in "Cuisine", with: @place.cuisine
    fill_in "Dietary restrictions", with: @place.dietary_restrictions
    fill_in "Entertainment type", with: @place.entertainment_type
    fill_in "Physical activity", with: @place.physical_activity
    fill_in "Price", with: @place.price
    fill_in "Shopping venue", with: @place.shopping_venue
    fill_in "Title", with: @place.title
    click_on "Create Place"

    assert_text "Place was successfully created"
    click_on "Back"
  end

  test "should update Place" do
    visit place_url(@place)
    click_on "Edit this place", match: :first

    fill_in "Category", with: @place.category
    fill_in "Cuisine", with: @place.cuisine
    fill_in "Dietary restrictions", with: @place.dietary_restrictions
    fill_in "Entertainment type", with: @place.entertainment_type
    fill_in "Physical activity", with: @place.physical_activity
    fill_in "Price", with: @place.price
    fill_in "Shopping venue", with: @place.shopping_venue
    fill_in "Title", with: @place.title
    click_on "Update Place"

    assert_text "Place was successfully updated"
    click_on "Back"
  end

  test "should destroy Place" do
    visit place_url(@place)
    click_on "Destroy this place", match: :first

    assert_text "Place was successfully destroyed"
  end
end
