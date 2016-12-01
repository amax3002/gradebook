require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_student_path
    assert_response :success
  end

  test "create new" do
    user_a = User.create(full_name: "Alex Guy", password: "password")
    post students_path, params: { student: {user_id: (user_a.id)}}
    assert_equal Student.last.user.full_name, "Alex Guy"
  end
end
