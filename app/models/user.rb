class User < ApplicationRecord
  ROLES = %w[resident organization city_hall_agent]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events
  has_many :event_participations
  has_many :participating_events, through: :event_participations, source: :event

  validates :first_name, :last_name, :phone_number, :email, presence: true
  validates :role, inclusion: { in: ROLES }
end
