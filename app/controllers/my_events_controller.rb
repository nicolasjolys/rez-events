class MyEventsController < ApplicationController
  def index
    @user = current_user
    @my_events = @user.events
  end

  def new
    @event = Event.new
  end

end
