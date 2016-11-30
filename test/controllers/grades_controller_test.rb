require 'test_helper'

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grades_path
    assert_response :success
  end

end
