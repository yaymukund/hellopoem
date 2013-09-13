# == Schema Information
#
# Table name: stanzas
#
#  id      :integer          not null, primary key
#  poem_id :integer
#  order   :integer
#
class Stanza < ActiveRecord::Base
  belongs_to :poem, inverse_of: :stanza
  has_one :author, through: :poem
  has_many :lines, inverse_of: :stanza

  default_scope order('ORDER ASC')
end
