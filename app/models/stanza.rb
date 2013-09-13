# == Schema Information
#
# Table name: stanzas
#
#  id      :integer          not null, primary key
#  poem_id :integer
#  order   :integer
#
class Stanza < ActiveRecord::Base
end
