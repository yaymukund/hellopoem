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
  has_one :user, through: :poem
  has_many :lines, inverse_of: :stanza
  default_scope { order('rank ASC') }
end
