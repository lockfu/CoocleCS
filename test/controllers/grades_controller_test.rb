require 'test_helper'

class GradesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

setup do
  @grades = grades(:grade1)
end


  test "should get downteacher" do
    get :downteacher, cid: 1
    assert_response :success
  end


  test "should get downstudent" do
    get :downstudent
    assert_response :success
  end

  test "should get studentInfo" do
    get :studentInfo,cid:1
    assert_response :success
  end

  test "should get update" do
    patch :update,id: 1, course_id: 2
    assert_response :redirect
  end

end
