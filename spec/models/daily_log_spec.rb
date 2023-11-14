# == Schema Information
#
# Table name: daily_logs
#
#  id         :integer          not null, primary key
#  date       :date
#  weight     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe DailyLog, type: :model do
  it "has a valid factory" do
    daily_log = build(:daily_log)
    expect(daily_log).to be_valid
  end

  describe "validations" do
    it "is valid with a date and weight" do
      daily_log = build(:daily_log, date: Date.today, weight: 150.0)
      expect(daily_log).to be_valid
    end

    it "is invalid without a date" do
      daily_log = build(:daily_log, date: nil)
      expect(daily_log).to_not be_valid
    end

    it "is valid without a weight" do
      daily_log = build(:daily_log, weight: nil)
      expect(daily_log).to be_valid
    end

    it "is invalid with a weight less than 0" do
      daily_log = build(:daily_log, weight: -1.0)
      expect(daily_log).to_not be_valid
    end
  end
end
