class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders
  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :name, presence: true
  validates :lastname, presence: true
end
