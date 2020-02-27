class FoodMealsController < ApplicationController
  def create
    current_meal = Meal.last_meal
    FoodMeal.create(food_id: params[:food_id], meal_id: current_meal.id)
    redirect_to food_meals_path
  end

  def index
    @daily_meal = FoodMeal.all
  end

  def destroy
    foodmeal = FoodMeal.find(params[:id])
    foodmeal.delete
    flash[:notice] = "succesfully removed"
    redirect_to food_meals_path
  end

  def datetime
    @date = params[:search].to_date
    @meals = FoodMeal.where('Date(created_at) = ?', @date)
    respond_to do |format|
      format.js { render partial: 'food_meals/date_result' }
    end

  end
end
