class CartController < ApplicationController
  def index
  end

  def edit
    current_user
    @cart = @current_user.shopping_cart
  end

  # This method is under construction!! Will come back to it.
  # def remove_from_cart(item)
  #   if logged_in?
  #     current_user
  #     find_item
  #     @current_cart = @current_user.shopping_cart
  #     @current_cart.delete(item)
  #     @current_user.save!
  #   end
  # end

  def checkout
    current_user
    @current_cart = @current_user.shopping_cart
    if logged_in? && !@current_cart.empty?
      @order = Order.new
      @order.user_id = @current_user.id

      @current_user.shopping_cart.each do |item|
        @order.item_id << item.id
      end

      @order.save!

      @current_user.orders << @order
      @current_user.save!

      empty_cart
      redirect_to cart_path
    end
  end
end
