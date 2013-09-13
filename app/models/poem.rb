# == Schema Information
#
# Table name: poems
#
#  id      :integer          not null, primary key
#  title   :string(255)      not null
#  user_id :integer
#

class Poem < ActiveRecord::Base
  belongs_to :user, inverse_of: :poems
  has_many :stanzas, inverse_of: :poem
  has_many :lines, -> { order 'stanzas.rank ASC, lines.rank ASC' }, through: :stanzas

  validates :title, presence: true

  # This query might need to be optimized eventually, which is why it's a scope.
  def self.random_order
    order('RANDOM()')
  end
end
