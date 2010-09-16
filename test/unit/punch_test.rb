require 'test_helper'

class PunchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Punch.new.valid?
  end
end
