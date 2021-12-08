class Agent::Admin::EventsController < ApplicationController
  def index
    @events = Event.all.where(status: "pending")
  end

  def decline
    @event = Event.find(params[:id])
    @event.status = "declined"
    @event.declined_at = Time.now

    @event.save

    redirect_to agent_admin_events_path
  end

  def accept
    @event = Event.find(params[:id])
    @event.status = "accepted"
    @event.accepted_at = Time.now
    @event.save

    redirect_to agent_admin_events_path
  end
end
