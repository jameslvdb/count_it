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
class Meal < ApplicationRecord
  validates :name, presence: true, inclusion: {in: %w[breakfast lunch dinner snack]}

  belongs_to :daily_log
  has_many :meal_items
  has_many :consumables, through: :meal_items
end
