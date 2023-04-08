class ConsumptionSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :consumed_at
  has_one :user
  has_one :food
end
