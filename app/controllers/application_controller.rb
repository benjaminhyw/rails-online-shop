class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include ItemsHelper
  include UsersHelper
  include CategoriesHelper
end
