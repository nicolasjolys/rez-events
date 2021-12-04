class MyEventsController < ApplicationController

  def index
    @user = current_user
    @my_event = @user.events
  end

  def new
    @user = current_user
    @event = Event.new(contact_email: @user.email, contact_last_name: @user.last_name, contact_first_name: @user.first_name, contact_phone_number: @user.phone_number )
    @event.user = @user
    @DISTRICTS = ['La Blordière', 'Château La Houssais', 'Pont-Rousseau', 'Ragon', 'Hôtel de ville', 'Trentemoult-les Isles']
    @CATEGORIES = ['Culture', 'Sport', 'Education-Jeunesse', 'Developpement durable', 'Solidarité', 'Santé', 'Petite enfance', 'Dialogue citoyen', 'Commémoration', 'Autre']
    @SAFETY_LEVELS = ['Niveau 1 - Manifestation de moins de 1500 personnes', 'Niveau 2 - Manifestation entre 1500 et 5000 personnes', 'Niveau 3 - Manifestation de plus de 5000 personnes']
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.status = "pending"
    @event.save
    if @event.save
      redirect_to my_events_path
    else
      render :new
    end
  end

  def index
    @user = current_user
    @events = @user.events.sort_by(&:id).reverse
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :address,
      :district,
      :start_at,
      :end_at,
      :pricing_description,
      :public_description,

      :category,
      :required_safety_level,
      :requested_equipment_description,
      :general_comment,

      :organization_name,
      :contact_last_name,
      :contact_first_name,
      :contact_email,
      :contact_phone_number,
    )
  end
end
