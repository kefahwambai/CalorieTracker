class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :age, :weight, :height, 
end
