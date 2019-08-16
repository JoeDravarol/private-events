class UsersController < ApplicationController
  before_action :signed_in_user, only: [:show]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = current_user
    @events = Event.all.where(user_id: @user.id)
    @invitations = @user.attended_event
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
end
