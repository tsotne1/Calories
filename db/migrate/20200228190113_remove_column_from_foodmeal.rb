class RemoveColumnFromFoodmeal < ActiveRecord::Migration[5.2]
  def change
    remove_column :food_meals, :calores_limit, :integer
  end
end
