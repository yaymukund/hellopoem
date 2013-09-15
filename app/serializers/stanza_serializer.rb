class StanzaSerializer < ActiveModel::Serializer
  attributes :id, :rank
  has_one :poem, include: false
  has_many :lines
end
