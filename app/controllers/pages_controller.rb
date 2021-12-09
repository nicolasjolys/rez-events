class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:query].present?
      sql_query = "name ILIKE :query OR public_description ILIKE :query OR category ILIKE :query"
      @events = Event.where(sql_query, query: "%#{params[:query]}%")
    else
      @events = Event.all.where(status: "accepted")
    end
    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        info_window: render_to_string(partial: "info_window", locals: { event: event })
      }
    end
  end
end
