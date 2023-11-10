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
  pending "add some examples to (or delete) #{__FILE__}"
end
