# == Schema Information
# Schema version: 20100714193632
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  
  attr_accessible :password
  attr_accessible :name, :email, :password, :password_confirmation

  #  EmailRegex=FORMAT OF THE EMAIL

  validates_presence_of(:name)
  
  # validates_format_of :email , :with => EmailRegex
  validates_uniqueness_of :email , :case_sensitive => false

  validates_presence_of(:password)
  validates_confirmation_of :password
  validates_length_of :password,:within => 6..40 

end







