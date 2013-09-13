# == Schema Information
#
# Table name: lines
#
#  id        :integer          not null, primary key
#  text      :text             not null
#  rank      :integer
#  stanza_id :integer
#

class Line < ActiveRecord::Base
  belongs_to :stanza, inverse_of: :lines
  has_one :poem, through: :stanza
  has_one :author, through: :poem
  validates :text, presence: true
  default_scope { order('rank ASC') }
end