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
FactoryBot.define do
  factory :meal do
    name { "breakfast" }
    daily_log
  end
end
