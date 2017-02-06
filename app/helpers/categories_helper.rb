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

    def clean_up
      categories.each do |category|
        category.item_id = []
        category.save
      end
    end

    def categorize
      clean_up
      items.each do |item|
        new_category = Category.find_by_id(item.category_id)
        if !item.category_id.blank? && !new_category.item_id.include?(item.id)
          new_category.item_id << item.id
          new_category.save
        end
      end
    end
end
