class Agent::EventsController < ApplicationController
  def index
    @events = Event.all.where(status: "accepted").order(start_at: :ASC)
    @user = current_user
  end
end
