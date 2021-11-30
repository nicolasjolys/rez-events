class Event < ApplicationRecord
  belongs_to :user
  has_many :city_hall_participants, through: :user

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
end
