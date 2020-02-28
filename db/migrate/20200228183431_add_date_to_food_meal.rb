class AddDateToFoodMeal < ActiveRecord::Migration[5.2]
  def change
    add_column :food_meals, :date, :date
  end
end
