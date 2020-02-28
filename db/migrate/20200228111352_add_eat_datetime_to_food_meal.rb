class AddEatDatetimeToFoodMeal < ActiveRecord::Migration[5.2]
  def change
    add_column :food_meals, :eat_datetime, :datetime
  end
end
