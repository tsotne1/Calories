class FoodMealsController < ApplicationController
  def create
    current_meal = Meal.last_meal
    FoodMeal.create(food_id: params[:food_id], meal_id: current_meal.id)

    current_foodmeal = FoodMeal.last
    if current_meal.eat_datetime
      current_foodmeal.eat_datetime = current_meal.eat_datetime
    else
      current_meal.eat_datetime = Time.now
      current_foodmeal.eat_datetime = current_meal.eat_datetime
    end
    current_foodmeal.save
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
    if params[:search].to_date != nil
      @date = params[:search].to_date
      @meals = FoodMeal.where('Date(eat_datetime) = ?', @date)
      respond_to do |format|
        format.js { render partial: 'food_meals/date_result' }
      end
    elsif params[:to] && params[:from] != nil
      @meals = FoodMeal.where(eat_datetime: params[:from].to_date...params[:to].to_date).order('eat_datetime DESC')
      respond_to do |format|
        format.js { render partial: 'food_meals/range_result' }
      end
    end


  end
end
