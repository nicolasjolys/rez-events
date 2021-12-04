class MyEventsController < ApplicationController

  def index
    @user = current_user
    @my_event = @user.events
  end

  def new
    @event = Event.new
    @user = current_user
    @event.user = @user
  end

  # def create
  #   @event = Event.new(event_params)
  #   @event.user = current_user
  #   @event.status = "pending"
  #   if @event.save
  #     redirect_to event_path
  #   else
  #     render :new
  #   end
  # end

  private

  def event_params
    params.require(:event).permit(:name,
                                  :public_description,
                                  :address,
                                  :district,
                                  :category,
                                  :start_at,
                                  :end_at,
                                  :contact_first_name,
                                  :contact_last_name,
                                  :contact_email,
                                  :contact_phone_number,
                                  :required_safety_level,
                                  :pricing_description
                                )
  end
end
