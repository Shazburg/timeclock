require 'test_helper'

class PunchTest < ActiveSupport::TestCase
  def test_should_be_valid
    p = Punch.new(:employee_id => 1, :category_id => 2, :in => true)
    assert p.valid?
  end
end
