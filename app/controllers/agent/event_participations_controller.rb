class Agent::EventParticipationsController < ApplicationController
  def create
    @event_participation = EventParticipation.new
    @event_participation.user = current_user
    @event_participation.event = Event.find(params[:event_id])

    @event_participation.save

    redirect_to agent_events_path
  end

  def destroy
    @event_participation = EventParticipation.find(params[:id])
    @event_participation.destroy

    redirect_to agent_events_path
  end
end
