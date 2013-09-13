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
end
