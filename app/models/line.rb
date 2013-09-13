# == Schema Information
#
# Table name: lines
#
#  id        :integer          not null, primary key
#  text      :text             not null
#  order     :integer          not null
#  stanza_id :integer
#
class Line < ActiveRecord::Base
  belongs_to :stanza, inverse_of: :line
  has_one :poem, through: :stanza
  has_one :author, through: :poem

  default_scope order('order ASC')
  validates :text, :order, presence: true
end
