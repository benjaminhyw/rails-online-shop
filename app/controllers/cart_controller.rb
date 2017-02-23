class CartController < ApplicationController
  def index
  end

  def edit
    current_user
    @cart = @current_user.shopping_cart
  end

  def remove_from_cart
    if logged_in?
      current_user
      @item = Item.find_by_id(params[:item_id])
      @current_cart = @current_user.shopping_cart
      @current_cart.delete(@item)
      @current_user.save!
      redirect_to edit_cart_path
    end
  end

  def checkout
    current_user
    @current_cart = @current_user.shopping_cart
    if logged_in? && !@current_cart.empty?
      @order = Order.new
      @order.user_id = @current_user.id

      @current_user.shopping_cart.each do |item|
        @order.items << item
      end

      @order.save!

      @current_user.orders << @order
      @current_user.save!

      empty_cart
      redirect_to cart_path
    end
  end
end
