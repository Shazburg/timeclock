class Employee < ActiveRecord::Base
  attr_accessible :last_name, :first_name
  validates_presence_of :last_name, :first_name
end
