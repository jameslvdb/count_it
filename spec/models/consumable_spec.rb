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
require "rails_helper"

RSpec.describe Consumable, type: :model do
  it "has a valid factory" do
    consumable = build(:consumable)
    expect(consumable).to be_valid
  end

  describe "validations" do
    it "is valid with a name, calories, protein, fat, carbs, and sodium" do
      consumable = Consumable.new(name: "Banana", calories: 100, protein_in_grams: 1, total_fat_in_grams: 1, carbs_in_grams: 1, sodium_in_mg: 1)
      expect(consumable).to be_valid
    end

    it "is invalid without a name" do
      consumable = Consumable.new(calories: 100, protein_in_grams: 1, total_fat_in_grams: 1, carbs_in_grams: 1, sodium_in_mg: 1)
      expect(consumable).to_not be_valid
    end

    describe "numericality validations" do
      it "is invalid with a negative calorie count" do
        consumable = Consumable.new(name: "Banana", calories: -1)
        expect(consumable).to_not be_valid
      end
    end
  end
end
