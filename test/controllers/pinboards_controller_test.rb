require 'test_helper'

class PinboardsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
