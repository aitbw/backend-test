class EventsController < ApplicationController
  before_action :load_event, only: :show

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    redirect_to events_path if @event.save
  end

  private

    def event_params
      params.require(:event).permit(
        :title, :location, :description,
        :event_date, :event_time, :price
      )
    end

    def load_event
      @event = Event.find(params[:id])
    end

end
