class OrdersController < ApplicationController
  def index
    current_user
    @user = current_user
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
    find_order
    if !@order
      redirect_to root_path
    else
      current_user
      @user = @current_user
      @items = @order.item_id
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
