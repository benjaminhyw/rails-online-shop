class ItemsController < ApplicationController
  def index
    @items = Item.all
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
      @item.update(item_params)

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
end
