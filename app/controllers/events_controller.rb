class EventsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR public_description ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all
    end
  end

  private


end
