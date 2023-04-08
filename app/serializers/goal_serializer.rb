class GoalSerializer < ActiveModel::Serializer
  attributes :id, :target_weight, :goal_date, :progress
  has_one :user
end
