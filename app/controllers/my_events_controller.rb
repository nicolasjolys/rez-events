class MyEventsController < ApplicationController
  def index
    @user = current_user
    @my_events = @user.events
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @user = current_user
    @event.user = @user
    @event.save
  end

  private

  def event_params
    params.require(:event).permit()
    # Voir si possible de simplifier la liste des params
  end
end
