class AttendancesController < ApplicationController
  before_action :signed_in_user, only: [:create]

  def create
    @event_id = params[:event_id]
    @user = current_user
    @attendance = Attendance.new(event_id: @event_id , user_id: @user.id)

    # If user is not invited, then invite the user
    if not_invited? && @attendance.save 
      redirect_to event_path(@event_id )
    else
      redirect_to event_path(@event_id )
    end
  end

  private

    # Check if user is not invited to event
    def not_invited?
      Event.find(@event_id).attendees.all? do |user| 
        user.id != @user.id
      end
    end

end
