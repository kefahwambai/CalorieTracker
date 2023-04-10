class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :kcal_per_g
end
