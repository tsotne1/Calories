class CreateFoodMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :food_meals do |t|
      t.integer :food_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
