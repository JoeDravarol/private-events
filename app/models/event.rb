class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  has_many :attendances
  has_many :attendees, through: :attendances, source: "user"
  scope :past, -> { where("date < ?", DateTime.now)}
  scope :upcoming, -> { where("date > ?", DateTime.now)}

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
