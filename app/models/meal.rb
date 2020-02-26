class Meal < ApplicationRecord
  belongs_to :user
  has_many :food_meals
  has_many :foods, through: :food_meals

  validates :time, presence: true
  def self.last_meal
    Meal.last
  end
end
