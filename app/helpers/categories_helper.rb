module CategoriesHelper
  private
    def current_item_category
      find_item
      @category = Category.find_by_id(@item.category_id)
    end

    def delete_item_from_old_category
      current_item_category
      @category.item_id.delete(@item.id)
      @category.save
    end

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
        new_category = Category.find_by_id(item.category_id)
        if !item.category_id.blank? && !new_category.item_id.include?(item.id)
          new_category.item_id << item.id
          new_category.save
        end
      end
    end
end
