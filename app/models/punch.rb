class Punch < ActiveRecord::Base
  attr_accessible :employee_id, :category_id, :in
  belongs_to :employee
  belongs_to :category
  validates_presence_of :employee_id, :category_id
end
