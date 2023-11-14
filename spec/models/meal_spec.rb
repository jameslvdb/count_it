# == Schema Information
#
# Table name: meals
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  daily_log_id :integer          not null
#
# Indexes
#
#  index_meals_on_daily_log_id  (daily_log_id)
#
# Foreign Keys
#
#  daily_log_id  (daily_log_id => daily_logs.id)
#
require "rails_helper"

RSpec.describe Meal, type: :model do
  it "has a valid factory" do
    meal = build(:meal)
    expect(meal).to be_valid
  end

  describe "validations" do
    it "requires a name" do
      meal = build(:meal, name: nil)

      expect(meal).to be_invalid
      expect(meal.errors.messages[:name]).to include("can't be blank")
    end

    it "requires a name that is one of the following: breakfast, lunch, dinner, snack" do
      meal = build(:meal, name: "brunch")

      expect(meal).to be_invalid
      expect(meal.errors.messages[:name]).to include("is not included in the list")
    end
  end

  describe "#date" do
    it "returns the date of the daily log" do
      daily_log = build(:daily_log, date: Date.today)
      meal = build(:meal, daily_log: daily_log)

      expect(meal.date).to eq(Date.today)
    end
  end
end
