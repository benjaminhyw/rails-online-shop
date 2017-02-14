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

    def refresh_cart
      @cart ||= []
    end

    def add_to_cart
      if logged_in?
        find_item
        # refresh_cart
        @current_user.shopping_cart << @item.id
        @current_user.save!
      end
    end
end
