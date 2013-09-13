# == Schema Information
#
# Table name: poems
#
#  id      :integer          not null, primary key
#  title   :string(255)      not null
#  user_id :integer
#

class Poem < ActiveRecord::Base
  belongs_to :author, inverse_of: :poems,
                      class_name: 'User',
                      foreign_key: 'user_id'

  has_many :stanzas, inverse_of: :poem
  has_many :lines, -> { order 'stanzas.rank ASC, lines.rank ASC' }, through: :stanzas

  validates :title, presence: true
end
