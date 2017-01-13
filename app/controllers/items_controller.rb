class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item_params = params.require(:item).permit(:name, :description, :image, :price, :quantity )
    @item = Item.new(item_params)
    @item.save

    redirect_to @item
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item_params = params.require(:item).permit(:name, :description, :image, :price, :quantity )
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to @item
  end

end
