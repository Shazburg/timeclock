class Punch < ActiveRecord::Base
  attr_accessible :employee_id, :in
  belongs_to :employee, :conditions => {:enabled => true}
  validates_presence_of :employee_id, :in
end
