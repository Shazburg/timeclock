require 'test_helper'

class PunchesControllerTest < ActionController::TestCase

  def setup
    @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("admin:secret")
  end

  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Punch.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Punch.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Punch.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to punch_url(assigns(:punch))
  end
  
  def test_edit
    get :edit, :id => Punch.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Punch.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Punch.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Punch.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Punch.first
    assert_redirected_to punch_url(assigns(:punch))
  end
  
  def test_destroy
    punch = Punch.first
    delete :destroy, :id => punch
    assert_redirected_to punches_url
    assert !Punch.exists?(punch.id)
  end
end
