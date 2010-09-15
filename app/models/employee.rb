class Employee < ActiveRecord::Base
	has_many :punches
	
	def name_with_comma
		"#{last_name}, #{first_name}"
	end
end
