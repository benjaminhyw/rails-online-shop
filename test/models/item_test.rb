require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save item without name, description, quantity, or price" do
    item = Item.new
    assert_not item.save, "Saved the article without one of the required fields"
  end
end
