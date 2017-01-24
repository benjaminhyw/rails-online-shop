require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "RailsOnlineShop"
  end

  test "should get user login page" do
    get new_session_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

end
