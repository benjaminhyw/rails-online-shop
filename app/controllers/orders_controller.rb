class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @cart ||= []
  end

  def new
    if current_user
      @order = Order.new
    else
      redirect_to root_path
    end
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
