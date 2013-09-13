# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login           :text             not null
#  password_digest :text
#
class User < ActiveRecord::Base
end
