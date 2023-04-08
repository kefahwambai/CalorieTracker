class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :portion_size
      t.integer :calories
      t.integer :protein
      t.integer :fat
      t.integer :carbohydrates
      t.string :food_group

      t.timestamps
    end
  end
end
