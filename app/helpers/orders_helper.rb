module OrdersHelper
  private
    def order_params
      params.require(:order).permit(:quantity)
    end

    def find_order
      @order = Order.find_by_id(params[:id])
    end
end
