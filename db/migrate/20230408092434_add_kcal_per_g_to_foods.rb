class AddKcalPerGToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :kcal_per_g, :float
  end
end
