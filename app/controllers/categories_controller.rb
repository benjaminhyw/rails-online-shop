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


end
