# == Schema Information
#
# Table name: consumables
#
#  id                 :integer          not null, primary key
#  calories           :integer
#  carbs_in_grams     :integer
#  name               :string
#  protein_in_grams   :integer
#  sodium_in_mg       :integer
#  total_fat_in_grams :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Consumable < ApplicationRecord
  validates :name, presence: true
  validates :calories, :protein_in_grams, :total_fat_in_grams, :carbs_in_grams, :sodium_in_mg, numericality: {greater_than_or_equal_to: 0}, allow_nil: true

  has_many :meal_items
  has_many :meals, through: :meal_items
end
