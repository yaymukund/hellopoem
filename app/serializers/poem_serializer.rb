class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user
  has_many :stanzas
end
