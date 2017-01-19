require 'test_helper'

class StudentClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_classroom = student_classrooms(:one)
  end

  test "should get index" do
    get student_classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_student_classroom_url
    assert_response :success
  end

  test "should create student_classroom" do
    assert_difference('StudentClassroom.count') do
      post student_classrooms_url, params: { student_classroom: { classroom_id: @student_classroom.classroom_id, student_id: @student_classroom.student_id } }
    end

    assert_redirected_to student_classroom_url(StudentClassroom.last)
  end

  test "should show student_classroom" do
    get student_classroom_url(@student_classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_classroom_url(@student_classroom)
    assert_response :success
  end

  test "should update student_classroom" do
    patch student_classroom_url(@student_classroom), params: { student_classroom: { classroom_id: @student_classroom.classroom_id, student_id: @student_classroom.student_id } }
    assert_redirected_to student_classroom_url(@student_classroom)
  end

  test "should destroy student_classroom" do
    assert_difference('StudentClassroom.count', -1) do
      delete student_classroom_url(@student_classroom)
    end

    assert_redirected_to student_classrooms_url
  end
end
