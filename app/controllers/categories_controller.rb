class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    if is_admin?
      @category = Category.new
    else
      redirect_to root_path
    end
  end

  def create
    if is_admin?
      category_params
      @category = Category.new(category_params)
      if @category.save
        redirect_to @category
      else
        render 'new'
      end
    else
      redirect_to root_path
    end
  end

  def show
    find_category
    if !@category
      redirect_to root_path
    end
  end

  def edit
    if is_admin?
      find_category
    else
      redirect_to item_path
    end
  end

  def update
    if is_admin?
      category_params
      find_category
      @category.update(category_params)

      redirect_to @category
    else
      redirect_to category_path
    end
  end

end
