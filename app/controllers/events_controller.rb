class EventsController < ApplicationController
  before_filter :set_plumber

  def create
    @event = @current_user.enquiries.new(event_params)
    @event.plumber = @plumber

    if @event.save
      render json: {}, status: :created, location: {}
    else
      render json: {}, status: :unprocessable_entity
    end
  end

  private
    def set_plumber
      @plumber = User.find(params[:user_id])
    end

    def event_params
      params.require(:event).permit(:title, :startsAt, :endsAt, :plumber_id, :client_id)
    end
end
