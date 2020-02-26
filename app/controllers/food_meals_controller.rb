class FoodMealsController < ApplicationController
  def create
    current_meal = Meal.last_meal
    FoodMeal.create(food_id: params[:food_id], meal_id: current_meal.id)
  end
end
