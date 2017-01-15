class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params
    @user = User.new(user_params)
    @user.save
  end

  def show
    find_user
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
