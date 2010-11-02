# == Schema Information
# Schema version: 20101022130350
#
# Table name: contacts
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  email_address :string(255)
#  phone_number  :string(255)
#  comments      :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Contact < ActiveRecord::Base
	validates_presence_of :name, :email_address, :phone_number
	
	#validating input for email address
	EmailRegex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates_format_of :email_address, :with => EmailRegex, :if => "!email_address.blank?"
	
	#validating input for any phone numbers entered
	Phoneformat = /\A[0-9]{3}+-[0-9]{3}+-[0-9]{4}+\z/i
	validates_format_of :phone_number, :with => Phoneformat, :if => "!phone_number.blank?"
end
