class AdminController < ApplicationController
  def index
    @items = Item.all
  end

end
