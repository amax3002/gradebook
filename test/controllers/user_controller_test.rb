require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "generate email from full_name" do
    post users_path, params: { user: { full_name: "Alex Guy", password: "password" } }
    User.last.generate_email
    assert_equal User.last.email, "alexguy@gwu.edu"
  end
end
