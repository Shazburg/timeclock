require 'test_helper'

class TimeZoneTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TimeZone.new.valid?
  end
end
