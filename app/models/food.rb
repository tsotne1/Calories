class Food < ApplicationRecord
  has_many :food_meals
  has_many :meals, through: :food_meals

  def self.search(name)
    Food.where(:name => name).all
  end
end
