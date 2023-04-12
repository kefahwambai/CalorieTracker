class AddTotalCaloriesToConsumptions < ActiveRecord::Migration[7.0]
  def change
    add_column :consumptions, :total_calories, :float
  end
end
