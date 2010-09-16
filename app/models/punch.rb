class Punch < ActiveRecord::Base
  attr_accessible :employee_id, :category_id, :in
  belongs_to :employee, :conditions => {:enabled => true}
  belongs_to :category, :conditions => {:enabled => true}
  validates_presence_of :employee_id, :category_id
end
