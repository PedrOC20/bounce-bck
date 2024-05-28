# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Store.create(
  name: "Cody's Cookie Store",
  location: "Lisbon",
  address: "Alvalade",
  price_per_bag: 4.9,
  max_number_of_bags: 10
)

Store.create(
  name: "Pedro's Book Store",
  location: "Lisbon",
  address: "Telheiras",
  price_per_bag: 5,
  max_number_of_bags: 15,
)

Store.create(
  name: "John's Shoe Store",
  location: "Lisbon",
  address: "Alcântara",
  price_per_bag: 7.1,
  max_number_of_bags: 25,
)