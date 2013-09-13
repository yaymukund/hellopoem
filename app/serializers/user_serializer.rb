class UserSerializer < ActiveModel::Serializer
  attributes :id, :login
  has_many :poems
end
