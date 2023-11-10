# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Consumable.find_or_create_by!(name: "Chick-Fil-A Sauce") do |c|
  c.calories = 140
  c.carbs_in_grams = 6
  c.total_fat_in_grams = 13
  c.protein_in_grams = 0
  c.sodium_in_mg = 170
end

Consumable.find_or_create_by!(name: "Chick-Fil-A Spicy Chicken Sandwich") do |c|
  c.calories = 450
  c.carbs_in_grams = 45
  c.total_fat_in_grams = 19
  c.protein_in_grams = 28
  c.sodium_in_mg = 1730
end

Consumable.find_or_create_by!(name: "Chick-Fil-A Waffle Fries (Medium)") do |c|
  c.calories = 420
  c.total_fat_in_grams = 24
  c.carbs_in_grams = 45
  c.protein_in_grams = 5
  c.sodium_in_mg = 240
end
