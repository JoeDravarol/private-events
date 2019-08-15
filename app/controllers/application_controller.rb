class ApplicationController < ActionController::Base

  # Set current user
  def current_user
    if cookies[:name]
      @user ||= User.find_by(name: cookies[:name])
    end
  end

  # Check if users is logged-in
  def signed_in?
    !current_user.nil?
  end

  # Confirms a signed-in user
  def signed_in_user
    unless signed_in?
      redirect_to new_session_path
    end
  end
end
