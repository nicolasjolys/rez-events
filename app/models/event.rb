class Event < ApplicationRecord
  DISTRICTS = ['La Blordière', 'Château La Houssais', 'Pont-Rousseau', 'Ragon', 'Hôtel de ville', 'Trentemoult-les Isles']
  CATEGORIES = ['Culture', 'Sport', 'Education-Jeunesse', 'Developpement durable', 'Solidarité', 'Santé', 'Petite enfance', 'Dialogue citoyen', 'Commémoration', 'Autre']
  SAFETY_LEVELS = ['Niveau 1 - Manifestation de moins de 1500 personnes', 'Niveau 2 - Manifestation entre 1500 et 5000 personnes', 'Niveau 3 - Manifestation de plus de 5000 personnes']
  STATUSES = %w[pending accepted declined canceled]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :event_participations
  has_many :participants, through: :event_participations, source: :user
  has_one_attached :photo

  validates :name,
            :public_description,
            :address,
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
  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :status, inclusion: { in: STATUSES }, presence: true
end
