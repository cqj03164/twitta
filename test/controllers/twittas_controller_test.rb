require 'test_helper'

class TwittasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
