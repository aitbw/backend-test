class EventsController < ApplicationController
  before_action :load_event, only: :show

  def index
    @events = Event.all
    @highlights = Event.highlights
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)

    if @event.save
      redirect_to events_path, notice: 'Your event was successfully created!'
    else
      render 'new'
    end
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
