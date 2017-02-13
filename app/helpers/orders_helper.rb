module OrdersHelper
  private
    def order_params
      params.require(:order).permit(:quantity)
    end
end
