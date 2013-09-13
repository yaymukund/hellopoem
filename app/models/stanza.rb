# == Schema Information
#
# Table name: stanzas
#
#  id      :integer          not null, primary key
#  poem_id :integer
#  rank    :integer
#

class Stanza < ActiveRecord::Base
  belongs_to :poem, inverse_of: :stanzas
  has_one :author, through: :poem
  has_many :lines, inverse_of: :stanzas
  default_scope { order('rank ASC') }
end
