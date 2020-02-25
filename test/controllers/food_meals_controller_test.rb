require 'test_helper'

class FoodMealsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get food_meals_create_url
    assert_response :success
  end

end
