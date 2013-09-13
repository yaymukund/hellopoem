class StanzaSerializer < ActiveModel::Serializer
  attributes :id, :rank
  has_one :poem
  has_many :lines
end
