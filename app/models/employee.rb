class Employee < ActiveRecord::Base
  attr_accessible :last_name, :first_name
  has_many :punches
  validates_presence_of :last_name, :first_name
  
  def display_name
    "#{last_name}, #{first_name}"
  end
  
end
