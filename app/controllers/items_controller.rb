class ItemsController < ApplicationController
  def index
    @items = Item.all
    categorize
    refresh_cart
  end

  def new
    if is_admin?
      @item = Item.new
    else
      redirect_to root_path
    end
  end

  def create
    if is_admin?
      item_params
      @item = Item.new(item_params)
      if @item.save
        categorize
        redirect_to @item
      else
        render 'new'
      end
    else
      redirect_to root_path
    end
  end

  def show
    find_item
    refresh_cart
    if !@item
      redirect_to root_path
    end
  end

  def edit
    if is_admin?
      find_item
    else
      redirect_to item_path
    end
  end

  def update
    if is_admin?
      item_params
      find_item
      delete_item_from_old_category
      @item.update(item_params)
      categorize

      redirect_to @item
    else
      redirect_to item_path
    end
  end

  def destroy
    if is_admin?
      find_item
      @item.destroy

      redirect_to admin_path
    else
      redirect_to root_path
    end
  end

  def add_to_cart
    if logged_in?
      find_item
      if !@current_user.shopping_cart.include?(@item.id)
        @current_user.shopping_cart << @item.id
        @current_user.shopping_cart = @current_user.shopping_cart.uniq
        @current_user.save!
      end
    end
  end
end
