require "application_system_test_case"

class UserPreferencesTest < ApplicationSystemTestCase
  setup do
    @user_preference = user_preferences(:one)
  end

  test "visiting the index" do
    visit user_preferences_url
    assert_selector "h1", text: "User preferences"
  end

  test "should create user preference" do
    visit user_preferences_url
    click_on "New user preference"

    fill_in "Cuisine", with: @user_preference.cuisine
    fill_in "Dietary restrictions", with: @user_preference.dietary_restrictions
    fill_in "Entertainment type", with: @user_preference.entertainment_type
    fill_in "Physical activity", with: @user_preference.physical_activity
    fill_in "Price", with: @user_preference.price
    fill_in "Shopping venue", with: @user_preference.shopping_venue
    fill_in "Vehicle", with: @user_preference.vehicle
    click_on "Create User preference"

    assert_text "User preference was successfully created"
    click_on "Back"
  end

  test "should update User preference" do
    visit user_preference_url(@user_preference)
    click_on "Edit this user preference", match: :first

    fill_in "Cuisine", with: @user_preference.cuisine
    fill_in "Dietary restrictions", with: @user_preference.dietary_restrictions
    fill_in "Entertainment type", with: @user_preference.entertainment_type
    fill_in "Physical activity", with: @user_preference.physical_activity
    fill_in "Price", with: @user_preference.price
    fill_in "Shopping venue", with: @user_preference.shopping_venue
    fill_in "Vehicle", with: @user_preference.vehicle
    click_on "Update User preference"

    assert_text "User preference was successfully updated"
    click_on "Back"
  end

  test "should destroy User preference" do
    visit user_preference_url(@user_preference)
    click_on "Destroy this user preference", match: :first

    assert_text "User preference was successfully destroyed"
  end
end
