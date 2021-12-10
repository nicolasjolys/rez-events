class EventsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR public_description ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%").order(start_at: :ASC)
    else
      @events = Event.all.order(start_at: :ASC)
    end
  end

  def show
    @event = Event.find(params[:id])
    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      info_window: render_to_string(partial: "pages/info_window", locals: { event: @event })
      # image_url: helpers.asset_url("#{event.category}.svg")
    }]
  end
end
