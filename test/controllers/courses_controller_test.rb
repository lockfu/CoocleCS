require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @course = courses(:one)
    @user = users(:student1)
    #@teaching_courses = courses(:one)

  end

  test "should get new" do
    get :new
    assert_response :success
  end


# courses_controller  create L23
    test "should get create" do
      post :create, course: {course_code: "091M4001H",
        name: "计算机体系结构",
        course_type: "专业核心课",
        teaching_type: "课堂讲授为主",
        exam_type: "闭卷笔试",
        credit: "60/3.0",
        limit_num: "2",
        class_room: "教1-107",
        course_time: "周一(9-11)",
        course_week: "第2-20周",
        exam_date: "2018-01-01",
        exam_time: "13:30",
        exam_place: "教一"
      }
      assert_response :redirect
    end

    test "should get edit" do
      get :edit, id: @course
      assert_response :success
    end


    test "should update course" do
      patch :update, id: @course, course: {course_code: "091M4001H",
        name: "计算机体系结构",
        course_type: "专业核心课",
        teaching_type: "课堂讲授为主",
        exam_type: "闭卷笔试",
        credit: "60/3.0",
        limit_num: "2",
        class_room: "教1-107",
        course_time: "周一(9-11)",
        course_week: "第2-20周",
        exam_date: "2018-01-01",
        exam_time: "13:30",
        exam_place: "教一"
      },current_user: @user
      assert_response :redirect
    end


    test "should open course" do
      get :open, id: @course
      assert_response :redirect
    end

    test "should close course" do
      get :close, id: @course
      assert_response :redirect
    end


    # courses_controller.rb L59
    test "should destroy course" do
      get :destroy, id: @course
      assert_response :redirect
    end


    # 100 104
    test "should get list" do
      get :list,curpage: 1,cids: [1,2].to_s
      assert_response :success
    end


    test "should get showcollege" do
      get :showcollege
      assert_response :success
    end


    test "should get select" do
      get :select, id: @course, isMas: 1
      assert_response :redirect
    end


    test "should get selectCourseByCids" do
      get :selectCourseByCids,cids: [3,2],ismass: [2,4]
      assert_response :redirect
    end

    test "should get showCourseInfo" do
      get :showCourseInfo, id: @course
      assert_response :success
    end

    test "should get showNoticeInfo" do
      get :showNoticeInfo, nid: 6
      assert_response :success
    end

    test "should get quit" do
      get :quit, id: @course
    assert_response :redirect
    end

    test "should get deleteByCids" do
      get :delCourseByCids, cids: [2,3].to_s
    assert_response :redirect
    end

    test "should get index" do
      get :index,curpage: 1,current_user: @user
      assert_response :success
    end


    test "should get showstudents" do
      get :showstudents, cid: @course
      assert_response :success
    end

      # test "should get timetable" do
      #   get :timetable
      #   assert_response :success
      # end
  # #
  # test "should get downloadStuInfo" do
  #   get :downloadStuInfo,cid: @course
  #   assert_response :success
  # end

  # test "should get exam" do
  #   get :exam,id:@course
  #   assert_response :success
  # end
  #

  #











end
