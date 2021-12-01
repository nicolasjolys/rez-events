class Agent::Admin::EventsController < ApplicationController
  def index
    @events = Event.all.where(status: "pending")
  end

  def decline
    @event = Event.find(params[:id])
    @event.status = "declined"
    @event.save
  end

  def accept
    @event = Event.find(params[:id])
    @event.status = "accepted"
    @event.save
  end
end
