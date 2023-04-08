class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :activity, :calories_burned, :activity_date
  has_one :user
end
