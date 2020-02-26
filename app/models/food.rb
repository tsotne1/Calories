class Food < ApplicationRecord
  has_many :food_meals
  has_many :meals, through: :food_meals

  validates :name, presence: true, uniqueness: {case_sensitive: false},
            length: {minimum: 2, maximum: 25}
  validates :calories, presence: true

  def self.search(name)
    Food.where(:name => name).all
  end
end
