require 'test_helper'

class PreordersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get thanks" do
    get :thanks
    assert_response :success
  end

end
