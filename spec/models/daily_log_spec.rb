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
  pending "add some examples to (or delete) #{__FILE__}"
end
