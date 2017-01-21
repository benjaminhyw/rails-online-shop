module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if there is one).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if user is successfully logged in.
  def logged_in?
    !current_user.nil?
  end

  # Logs out current user.
  def logout
    session[:user_id] = nil
  end
end
