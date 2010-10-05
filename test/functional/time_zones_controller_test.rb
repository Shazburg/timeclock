require 'test_helper'

class TimeZonesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TimeZone.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TimeZone.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TimeZone.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to time_zone_url(assigns(:time_zone))
  end
  
  def test_edit
    get :edit, :id => TimeZone.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TimeZone.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TimeZone.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TimeZone.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TimeZone.first
    assert_redirected_to time_zone_url(assigns(:time_zone))
  end
  
  def test_destroy
    time_zone = TimeZone.first
    delete :destroy, :id => time_zone
    assert_redirected_to time_zones_url
    assert !TimeZone.exists?(time_zone.id)
  end
end
