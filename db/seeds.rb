# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
Product.destroy_all  # Clears the products table before loading new data

Product.create!([
  { title: 'Book', description: 'A good book to read', image_url: 'book.jpg', price: 12.99 },
  { title: 'Laptop', description: 'A powerful laptop', image_url: 'laptop.jpg', price: 999.99 },
  { title: 'Phone', description: 'A smartphone with great features', image_url: 'phone.jpg', price: 599.99 }
])

puts "Seed data successfully loaded!"


