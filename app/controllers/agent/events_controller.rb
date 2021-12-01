class Agent::EventsController < ApplicationController
  def index
    @events = Event.all.where(status: "accepted")
    @user = current_user
  end
end
