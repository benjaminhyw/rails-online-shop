require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @base_title = "RailsOnlineShop"
  end

  test "should get new user registration form page" do
    get new_user_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

end
