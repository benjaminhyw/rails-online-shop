class CartController < ApplicationController
  def index
  end

  def checkout
    current_user
    @current_cart = @current_user.shopping_cart
    if logged_in? && !@current_cart.empty?
      empty_cart
      redirect_to cart_path
    end
  end
end
