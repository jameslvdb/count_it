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
class DailyLog < ApplicationRecord
  validates :date, presence: true

  has_many :meals, dependent: :destroy
end
