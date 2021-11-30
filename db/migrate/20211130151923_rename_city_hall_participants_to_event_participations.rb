class RenameCityHallParticipantsToEventParticipations < ActiveRecord::Migration[6.1]
  def change
    rename_table :city_hall_participants, :event_participations
  end
end
