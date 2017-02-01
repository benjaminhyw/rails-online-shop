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

end
