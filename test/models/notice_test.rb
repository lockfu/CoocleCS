require 'test_helper'

class NoticeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @notice = Notice.new(title: "回校通知", date: "2018-01-01", isAddtional: 1,content: "请查看官网")
  end

  test "should be valid" do
    assert  @notice.valid?
  end

  test "title should be present" do
    @notice.title = "     "
    assert_not @notice.valid?
  end

  test "title should not be too long" do
    @notice.title = "a"*51
    assert_not @notice.valid?
  end

end
