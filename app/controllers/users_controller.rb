class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params
    @user = User.new(user_params)
    @user.save

    redirect_to @user
  end

  def show
    find_user
  end

  def edit
    find_user
  end

  def update
    user_params
    find_user
    @user.update(user_params)

    redirect_to @user
  end

  def destroy
    find_user
    @user.destroy

    redirect_to items_path
  end

  private
    def find_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
