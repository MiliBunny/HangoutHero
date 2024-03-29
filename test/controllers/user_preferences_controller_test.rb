require "test_helper"

class UserPreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_preference = user_preferences(:one)
  end

  test "should get index" do
    get user_preferences_url
    assert_response :success
  end

  test "should get new" do
    get new_user_preference_url
    assert_response :success
  end

  test "should create user_preference" do
    assert_difference("UserPreference.count") do
      post user_preferences_url, params: { user_preference: { cuisine: @user_preference.cuisine, dietary_restrictions: @user_preference.dietary_restrictions, entertainment_type: @user_preference.entertainment_type, physical_activity: @user_preference.physical_activity, price: @user_preference.price, shopping_venue: @user_preference.shopping_venue, vehicle: @user_preference.vehicle } }
    end

    assert_redirected_to user_preference_url(UserPreference.last)
  end

  test "should show user_preference" do
    get user_preference_url(@user_preference)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_preference_url(@user_preference)
    assert_response :success
  end

  test "should update user_preference" do
    patch user_preference_url(@user_preference), params: { user_preference: { cuisine: @user_preference.cuisine, dietary_restrictions: @user_preference.dietary_restrictions, entertainment_type: @user_preference.entertainment_type, physical_activity: @user_preference.physical_activity, price: @user_preference.price, shopping_venue: @user_preference.shopping_venue, vehicle: @user_preference.vehicle } }
    assert_redirected_to user_preference_url(@user_preference)
  end

  test "should destroy user_preference" do
    assert_difference("UserPreference.count", -1) do
      delete user_preference_url(@user_preference)
    end

    assert_redirected_to user_preferences_url
  end
end
