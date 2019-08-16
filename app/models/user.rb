class User < ApplicationRecord
  has_many :events
  has_many :attendances
  has_many :attended_event, through: :attendances, source: "event"

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
