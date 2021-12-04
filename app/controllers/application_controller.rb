class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.city_hall_admin
      stored_location_for(resource) || agent_admin_events_path
    else
      stored_location_for(resource) || agent_events_path
    end
  end
end
