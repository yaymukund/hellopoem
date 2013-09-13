# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login           :text             not null
#  password_digest :text
#

class User < ActiveRecord::Base
  has_secure_password

  has_many :poems, inverse_of: :author
  has_many :stanzas, through: :poems
  has_many :lines, through: :stanzas

  validates :login, presence: true,
                    uniqueness: true

  validates :password_digest, presence: true
end
