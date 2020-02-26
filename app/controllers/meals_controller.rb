class MealsController < ApplicationController
  before_action :require_same_user, only: [:edit, :update, :destroy]
  
  def index
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
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

    def require_same_user
      if current_user != @article.user and !current_user.admin?
        flash[:danger] = "You can only edit or delte your own articles"
        redirect_to root_path
      end
    end
end
