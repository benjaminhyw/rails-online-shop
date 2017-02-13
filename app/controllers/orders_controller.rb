class OrdersController < ApplicationController
  def index
    @orders = Order.all
    refresh_cart
  end

  def new
    if logged_in?
      @order = Order.new
      refresh_cart
    else
      redirect_to root_path
    end
  end

  def create
    if logged_in?
      order_params
      @order = Order.new(order_params)
      if @order.save
        redirect_to @order
      else
        render 'new'
      end
    end
  end

  def show
    refresh_cart
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
