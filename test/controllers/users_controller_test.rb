require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get new user registration form page" do
    get new_user_url
    assert_response :success
  end

end
