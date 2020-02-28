class AddEatDatetimeToMeal < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :eat_datetime, :datetime
  end
end
