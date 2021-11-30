class Event < ApplicationRecord
  DISTRICTS = ['La Blordière', 'Château La Houssais', 'Pont-Rousseau', 'Ragon', 'Hôtel de ville', 'Trentemoult-les Isles']
  CATEGORIES = ['Culture', 'Sport', 'Education-Jeunesse', 'Developpement durable', 'Solidarité', 'Santé', 'Petite enfance', 'Dialogue citoyen', 'Commémoration', 'Autre']
  SAFETY_LEVELS = ['Niveau I', 'Niveau II', 'Niveau III']
  STATUSES = %w[pending accepted declined]

  belongs_to :user
  has_many :event_participations
  has_many :participants, through: :event_participations, source: :user

  validates :name,
            :public_description,
            :address,
            :category,
            :start_at,
            :end_at,
            :contact_first_name,
            :contact_last_name,
            :contact_email,
            :contact_phone_number,
            :pricing_description,
            presence: true
  validates :district, inclusion: { in: DISTRICTS }, presence: true
  validates :required_safety_level, inclusion: { in: SAFETY_LEVELS }, presence: true
  validates :status, inclusion: { in: STATUSES }, presence: true
end
