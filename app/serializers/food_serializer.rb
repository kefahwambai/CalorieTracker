class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :portion_size, :calories, :protein, :fat, :carbohydrates, :food_group
end
