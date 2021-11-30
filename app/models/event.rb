class Event < ApplicationRecord
  # DISTRICTS = %w[]
  STATUSES = %w[pending accepted declined]

  belongs_to :user
  has_many :event_participations
  has_many :participants, through: :event_participations, source: :user

  validates :name,
            :district,
            :address,
            :category,
            :start_at,
            :end_at,
            :required_safety_level,
            :pricing_description,
            :status,
            presence: true
  validates :status, inclusion: { in: STATUSES }
end
