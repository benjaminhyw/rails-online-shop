module CategoriesHelper
  private
    def categories
      @categories = Category.all
    end

    def find_category
      @category = Category.find_by_id(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
