class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :price_per_night, numericality: { greater_than_or_equal_to: 0 }
  validates :number_of_guests, numericality: { greater_than_or_equal_to: 1 }
end
