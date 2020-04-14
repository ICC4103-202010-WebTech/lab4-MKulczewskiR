class EventVenue < ApplicationRecord
  has_many :events
  has_many :events
  validates :name, presence: true
  validates :address, presence: true
  validates :capacity, numericality: { only_integer: true, greater_than: 10 }
end
