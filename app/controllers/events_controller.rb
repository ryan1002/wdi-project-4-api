class EventsController < ApplicationController
  def create
    @event = @current_user.enquires.new(event_params)
    # @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  private
    def event_params
      params.require(:event).permit(:title, :startsAt, :endsAt, :client_id, :plumber_id)
    end
end
