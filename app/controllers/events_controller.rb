class EventsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR public_description ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  private


end
