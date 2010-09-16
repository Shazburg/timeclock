require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  def test_should_be_invalid
    assert_equal false, Employee.new.valid?
  end
  
  def test_validation_for_first_name
    emp = Employee.new(:last_name => "Doe")
    assert_equal false, emp.valid?
  end
  
  def test_validation_for_last_name
    emp = Employee.new(:first_name => "John")
    assert_equal false, emp.valid?
  end
end
