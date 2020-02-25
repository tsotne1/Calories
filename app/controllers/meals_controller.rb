class MealsController < ApplicationController
  def index
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new
  end

  def search
    @food = Food.search(params[:search])
    respond_to do |format|
      format.js { render partial: 'meals/search_result' }
    end
  end

  def show

  end 
end
