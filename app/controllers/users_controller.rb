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
    @upcoming_events = @user.upcoming_events
    @prev_events = @user.previous_events
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
end
