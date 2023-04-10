class RemovePortionSizeFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :portion_size, :float if column_exists?(:foods, :portion_size)
  end
end
