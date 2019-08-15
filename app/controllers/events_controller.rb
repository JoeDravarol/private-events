class EventsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]

  def index
    @events = Event.all
    @user = current_user
  end
  
  def new
    @event = Event.new
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
