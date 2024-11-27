# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory.',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Cozy Studio in the City',
  address: '5 Regent Street London W1B 5JE',
  description: 'A cozy and modern studio apartment perfect for a city getaway.',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Penthouse with a View',
  address: '22 High Street London EC2A 4PG',
  description: 'Luxury penthouse with stunning views over the Thames. Ideal for a romantic getaway.',
  price_per_night: 250,
  number_of_guests: 4
)

Flat.create!(
  name: 'Suburban Retreat',
  address: '15 Oak Avenue, Kingston KT1 2DQ',
  description: 'A peaceful retreat located in the suburbs, perfect for a quiet weekend.',
  price_per_night: 60,
  number_of_guests: 5
)
