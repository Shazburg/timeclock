class Punch < ActiveRecord::Base
	validates_presence_of :employee_id
	belongs_to :employee
end
