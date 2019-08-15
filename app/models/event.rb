class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
