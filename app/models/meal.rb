class Meal < ApplicationRecord
  has_many :food_meals
  has_many :foods, through: :food_meals

  def self.last_meal
    Meal.last
  end
end
