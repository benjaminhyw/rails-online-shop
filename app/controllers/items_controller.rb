class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    if current_user && current_user.admin
      @item = Item.new
    else
      redirect_to root_path
    end
  end

  def create
    if current_user && current_user.admin
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
    find_item
  end

  def update
    item_params
    find_item
    @item.update(item_params)

    redirect_to @item
  end

  def destroy
    find_item
    @item.destroy

    redirect_to root_path
  end

  private
    def find_item
      @item = Item.find_by_id(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :image, :price, :quantity )
    end
end
