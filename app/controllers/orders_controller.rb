class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    if current_user
      @order = Order.new
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
