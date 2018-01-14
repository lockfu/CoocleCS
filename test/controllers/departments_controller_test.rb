require 'test_helper'

class DepartmentsControllerTest < ActionController::TestCase
  test "should be index" do
    get :index
    assert_response :success
  end

end
