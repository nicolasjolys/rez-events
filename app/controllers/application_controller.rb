class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # after_sign_in_path_for agent_admin_events_path
end
