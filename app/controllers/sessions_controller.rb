class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      #Log the user in and redirect to the user's show page (for now)
      log_in user
      remember user
      if user.admin
        redirect_to admin_path
      else
        redirect_to user_path(user)
      end
    else
      flash.now[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
