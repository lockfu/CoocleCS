require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:student1)
  end

  test "should be new" do
    get :new
    assert_response :success
  end

  test "should be create" do
    post :create, user: {
      name: "彭兆卿",
      email: "admin@test.com",
      num: "201628008629001",
      major: "计算机软件与理论",
      department: "计算机与控制学院",
      password: "password",
      password_confirmation: "password",
      admin: true
    }
    assert_response :success
  end
  test "should be edit" do
    get :edit , id: @user
    assert_response :success
  end

  #
  test "should be update" do
    patch :update, id: 1, user: {
      name: "彭兆卿",
      email: "admin@test.com",
      num: "201628008629001",
      major: "计算机软件与理论",
      department: "计算机与控制学院",
      password: "password",
      password_confirmation: "password",
      admin: true
    }
    assert_response :redirect
  end

  test "should be destroy" do
    get :destroy, id: "1018932494"
    assert_response :redirect
  end





end
