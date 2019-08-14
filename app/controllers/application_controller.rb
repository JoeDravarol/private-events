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
end
