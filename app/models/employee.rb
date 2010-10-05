class Employee < ActiveRecord::Base
  attr_accessible :last_name, :first_name, :enabled
  cattr_reader :per_page
  has_many :punches
  validates_presence_of :last_name, :first_name
  
  @@per_page = 1
  
  def display_name
    "#{last_name}, #{first_name}"
  end
  
end
