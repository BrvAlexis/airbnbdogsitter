# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création de villes
city1 = City.create(city_name: "Toulouse")
city2 = City.create(city_name: "Paris")

# Création de dogsitters
dogsitter1 = Dogsitter.create(first_name: "John", last_name: "Doe", city: city1)
dogsitter2 = Dogsitter.create(first_name: "Jane", last_name: "Smith", city: city2)

# Création de chiens
dog1 = Dog.create(name: "Buddy", city: city1)
dog2 = Dog.create(name: "Charlie", city: city2)
