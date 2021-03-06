class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params
    @user = User.new(user_params)
    if @user.save
      log_in @user
      UserMailer.welcome_email(@user).deliver_now
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    find_user
    if (current_user != @user) || !@user
      redirect_to root_path
    end
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

    redirect_to root_path
  end

  private
    def find_user
      @user = User.find_by_id(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
