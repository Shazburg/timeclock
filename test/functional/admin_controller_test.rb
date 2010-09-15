require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get report" do
    get :report
    assert_response :success
  end

  test "should get employees" do
    get :employees
    assert_response :success
  end

end
