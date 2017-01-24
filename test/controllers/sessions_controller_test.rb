require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get user login page" do
    get new_session_url
    assert_response :success
    assert_select "title", "RailsOnlineShop"
  end

end
