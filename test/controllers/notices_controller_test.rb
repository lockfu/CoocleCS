require 'test_helper'

class NoticesControllerTest < ActionController::TestCase
  test "should be index" do
    get :index
    assert_response :success
  end

end
