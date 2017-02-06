module CategoriesHelper
  private
    def categories
      @categories = Category.all
    end

    def items
      @items = Item.all
    end

    def find_category
      @category = Category.find_by_id(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

    def categorize
      items.each do |item|
        category = Category.find_by_id(item.category_id)
        if !item.category_id.blank?
          category.item_id << item.id
          category.save
        end
      end
    end
end
