module ItemsHelper
  private
    def find_item
      @item = Item.find_by_id(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :image, :price, :quantity )
    end
end
