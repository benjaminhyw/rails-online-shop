module ItemsHelper
  private
    def find_item
      @item = Item.find_by_id(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, :image, :price, :quantity, :category_id )
    end

    def empty_cart
      @cart = []
    end

    def add_to_cart(item)
      @cart << item
    end
end
