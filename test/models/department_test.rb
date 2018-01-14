require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  def setup
    @department = Department.new(name: "教务部", desc: "管理学生事务")
  end

  test "should be valid" do
    assert  @department.valid?
  end

  test "name should be present" do
    @department.name = "     "
    assert_not @department.valid?
  end

  test "name should not be too long" do
    @department.name = "a"*51
    assert_not @department.valid?
  end

end
