require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
    @base_title = "RailsOnlineShop"
  end

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get new item form page" do
    get new_item_url
    assert_response :success
    assert_select "title", "#{@base_title}"
  end
end
