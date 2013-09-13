class LineSerializer < ActiveModel::Serializer
  attributes :id, :text, :rank
  has_one :stanza
end
