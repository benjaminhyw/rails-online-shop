require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get new item form page" do
    get new_item_url
    assert_response :success
    assert_select "title", "RailsOnlineShop"
  end
end
