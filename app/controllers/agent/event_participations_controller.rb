class Agent::EventParticipationsController < ApplicationController
  def create
    @event_participation = EventParticipation.new
    @event_participation.user = current_user
    @event_participation.event = Event.find(params[:event_id])

    @event_participation.save
  end
end
