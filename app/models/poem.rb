# == Schema Information
#
# Table name: poems
#
#  id      :integer          not null, primary key
#  title   :string(255)      not null
#  user_id :integer
#
class Poem < ActiveRecord::Base
end
