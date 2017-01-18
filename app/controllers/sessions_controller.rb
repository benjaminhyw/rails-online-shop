class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.autenticate(params[:session][:password])
      #Log the user in and redirect to the user's show page (for now)
      # render new_user_path
    else
      flash.now[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end

  def destroy

  end
end
