class EventsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]

  def index
    @upcoming_events = Event.all.upcoming
    @past_events = Event.all.past
    @user = current_user
  end

  def show
    @event = Event.find_by(id: params[:id])
    @attendees = @event.attendees
    @user = current_user
  end
  
  def new
    @event = Event.new
    @users = User.all
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to current_user
    else
      render :new
    end
  end

  private

    def event_params
      params.require(:event).permit(:title, :description, :location, :date)
    end
end
