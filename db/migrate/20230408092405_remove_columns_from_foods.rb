class RemoveColumnsFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :portion_size, :integer
    remove_column :foods, :calories, :integer
    remove_column :foods, :protein, :integer
    remove_column :foods, :fat, :integer
    remove_column :foods, :carbohydrates, :integer
    remove_column :foods, :food_group, :string
  end
end
