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

  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
