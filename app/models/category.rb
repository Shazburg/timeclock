class Category < ActiveRecord::Base
  attr_accessible :name, :enabled
  has_many :punches
end
