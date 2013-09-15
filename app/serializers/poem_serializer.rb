class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user, include: false
  has_many :stanzas
end
