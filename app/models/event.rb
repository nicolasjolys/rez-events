class Event < ApplicationRecord
  DISTRICTS = ['La Blordière', 'Château La Houssais', 'Pont-Rousseau', 'Ragon', 'Hôtel de ville', 'Trentemoult-les Isles']
  SAFETY_LEVELS = ['Niveau I', 'Niveau II', 'Niveau III']
  STATUSES = %w[pending accepted declined]

  belongs_to :user
  has_many :event_participations
  has_many :participants, through: :event_participations, source: :user

  validates :name,
            :public_description,
            :district,
            :address,
            :category,
            :start_at,
            :end_at,
            :contact_first_name,
            :contact_last_name,
            :contact_email,
            :contact_phone_number,
            :required_safety_level,
            :pricing_description,
            :status,
            presence: true
  validates :status, inclusion: { in: STATUSES }
  validates :district, inclusion: { in: DISTRICTS }
end
