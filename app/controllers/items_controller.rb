class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item_params
    @item = Item.new(item_params)
    @item.save

    redirect_to @item
  end

  def show
    find_item
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

    redirect_to items_path
  end

  private
    def find_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :image, :price, :quantity )
    end
end
