# == Schema Information
#
# Table name: meal_items
#
#  id            :integer          not null, primary key
#  quantity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  consumable_id :integer          not null
#  meal_id       :integer          not null
#
# Indexes
#
#  index_meal_items_on_consumable_id  (consumable_id)
#  index_meal_items_on_meal_id        (meal_id)
#
# Foreign Keys
#
#  consumable_id  (consumable_id => consumables.id)
#  meal_id        (meal_id => meals.id)
#
require "rails_helper"

RSpec.describe MealItem, type: :model do
  it "has a valid factory" do
    meal_item = build(:meal_item)
    expect(meal_item).to be_valid
  end

  describe "associations" do
    it "is invalid without a meal" do
      meal_item = build(:meal_item, meal: nil)
      expect(meal_item).to_not be_valid
    end

    it "is invalid without a consumable" do
      meal_item = build(:meal_item, consumable: nil)
      expect(meal_item).to_not be_valid
    end
  end
end
