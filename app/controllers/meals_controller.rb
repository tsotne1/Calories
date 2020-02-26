class MealsController < ApplicationController
  def index
  end

  def new
    @meal = Meal.new
  end

  def create
    if @food
      @foods = @food
    end
    @meal = Meal.new(meal_params)
    if @meal.save
      respond_to do |format|
        format.js { render partial: 'meals/search' }
      end
    end
  end

  def search
    @food = Food.search(params[:search])
    respond_to do |format|
      format.js { render partial: 'meals/search_result' }
    end
  end

  def show

  end

  private
  def meal_params
    params.require(:meal).permit(:user_id, :time)
  end
end
