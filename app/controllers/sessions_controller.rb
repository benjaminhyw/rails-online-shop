class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && (user.password == (params[:session][:password]))
      #Log the user in and redirect to the user's show page (for now)
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end

  def destroy

  end
end
